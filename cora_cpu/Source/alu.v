`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/06 14:07:38
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu(
    input clk, reset_p,
    input op_add, op_sub, op_mul, op_div, op_and, // 연산에 사용할 명령어
    input alu_lsb, // 최하위 비트 입력 하나 있어야 됨
    input [3:0] acc_high_data,
    input [3:0] bus_reg_data,
    output [3:0] alu_out,
    // 비교 연산을 위한 flag
    // cout이 발생했을 때, sign인지 carry인지 구분하기 위해 사용
    output zero_flag, // 연산의 결과가 0이면, zero flag = 1
    output sign_flag, // 부호(음수/양수)가 바뀌면, sign flag = 1
    output carry_flag, // carry가 발생하면, carry flag = 1
    output cout 
    );
    // 8bit가 ALU와 연결된다.
    // ACC와 연결되는 것은 상위 4bit -> 연산은 4bit로만 이루어진다.
    // BREG와 연결되는 것은 하위 4bit
    // 따라서 만약 8bit짜리 CPU라면, BUS는 16bit로 구성되어야 한다.
    
    // 가감산기
    fadd_sub_4bit_d fadd_sub(.a(acc_high_data), .b(bus_reg_data),
                             .s(op_sub | op_div), // sub 또는 div 명령어가 발생했을 때를 의미한다.
                             .sum(sum), .carry(cout)
); // add : s = 0, sub : s = 1 (나눗셈은 뺴기의 연속)
    // 덧셈 뺄셈 연산은 alu_out으로 나가면 된다.
    
    // AND 연산
    assign alu_out = op_and ? (acc_high_data & bus_reg_data) : sum;
    
    // 연산 속도 : 곱하기는 2 clk, 나누기는 4 clk 이상
    // 이렇게 만든 alu로 산술연산, 논리연산, 시프트 연산, 비교 연산까지 가능하다.
    
    // Zero Flag
    wire zero_sum = ~(|sum);
    register_Nbit_p #(.N(1)) zero_f(.d(zero_sum), .clk(clk), .reset_p(reset_p), .wr_en(op_sub), .rd_en(1'd1), .q(zero_flag));
    
    // Sign Flag
    // 뺸 결과가 양수거나 0이면, cout = 0 -> sign_flag = 1
    // 뺸 결과가 음수가 나오면 cout = 1 -> sign_flag = 0
    register_Nbit_p #(.N(1)) sign_f(.d(~cout), .clk(clk), .reset_p(reset_p), .wr_en(op_sub), .rd_en(1'd1), .q(sign_flag));
    
    // Carry Flag
    // 곱하기, 나누기, 더하기할 때 봐야 하므로
    // wr_en은 1 줘서 계속 enable되게 하고 cout에 &로 묶어주자.
    register_Nbit_p #(.N(1)) carry_f(.d(cout & (op_add | op_sub | (op_mul & alu_lsb))), .clk(clk), .reset_p(reset_p), .wr_en(1'b1), .rd_en(1'd1), .q(carry_flag)); //

endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////// Half ACC /////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// 4bit짜리 ACC만들어서 두 개 이어붙일것이다.
module half_acc(
    input clk, reset_p,
    input load_msb, load_lsb, // 시프트하여 사용학 위한 변수
    input rd_en, // Bus를 공통으로 쓰기 떄문에 Control Block으로부터 받는 Enable 신호
    input [1:0] s,
    input [3:0] data_in, // 데이터 입력받을 변수
    output [3:0] data2bus, // BUS의 신호를 받아서 데이터 출력을 내보내는 변수, 신호가 오지 않으면 임피던스 상태
    output [3:0] register_data // 언제든 바로바로 데이터 출력을 내보내는 변수
    );
    
    
    reg [3:0] d;
    always @(*) begin
        case(s)
            2'b00 : d = register_data;
            2'b01 : d = {load_msb, register_data[3:1]}; // 불러온 msb와 register_data의 상위 3bit를 결합한다 -> 우시프트 연산
            2'b10 : d = {register_data[2:0], load_lsb}; // 좌시프트
            2'b11 : d = data_in;
        endcase // 조합논리회로에서는 case를 전부 채우거나 default를 만들어줘야 한다. 그렇지 않으면 Latch가 만들어질 수도 있다
    end
    
    // Half ACC
    register_Nbit_p_alltime #(.N(4)) h_cc(.d(d), .clk(clk), .reset_p(reset_p), .wr_en(1'b1), .rd_en(rd_en), .register_data(register_data), .q(data2bus));
    // 상시 출력은 register_data, 조건 출력(Enable 신호)은 data2bus
    
endmodule


module acc(
    input clk, reset_p, acc_high_reset_p,
    input fill_value, // 0으로 채우거나 1로 채움
    input rd_en, acc_in_select,
    input [1:0] acc_high_select, acc_low_select, // Half_ACC가 두 개이므로 구분해줘야 한다.
    input [3:0] bus_data, alu_data,
    output [3:0] acc_high_data2bus, acc_high_register_data,
    output [3:0] acc_low_data2bus, acc_low_register_data     
    );
    
    // ACC는 Bus로부터도 데이터를 받고, ALU로부터도 데이터를 받으므로,
    // 어디서 받을 것인지 선택하는 기능이 필요하다.
    wire [3:0] acc_high_data;
    assign acc_high_data = acc_in_select ? bus_data : alu_data;
    
    half_acc acc_high(.clk(clk), .reset_p(reset_p | acc_high_reset_p), .load_msb(fill_value), .load_lsb(acc_low_register_data[3]), .rd_en(rd_en), .s(acc_high_select), // 좌시프트할 때는 하위 bit에 최상위 bit를 준다
                      .data_in(acc_high_data), .data2bus(acc_high_data2bus), .register_data(acc_high_register_data));
    half_acc acc_low(.clk(clk), .reset_p(reset_p), .load_msb(acc_high_register_data[0]), .load_lsb(fill_value), .rd_en(rd_en), .s(acc_low_select),
                      .data_in(acc_high_register_data), .data2bus(acc_low_data2bus), .register_data(acc_low_register_data));
                      // load할 때는 상위 4bit만 받고 하위 4bit는 안 받아
                      // 그래서 data_in에 상위 4bit를 그냥 그대로 줘
    // 하위 비트는 상위 4bit를 불러와서 쓴다.
    // 불러온 뒤 불러온 상위 4but는 리셋을 시켜줘야 해.
    // 근데 그냥 리셋을 쓰면 하위까지 다 지워짐.
    // 따라서 상위 4bit만 따로 리셋해주는 기능이 필요하다. -> acc_high에 acc_high_reset_p 추가                                     
    
endmodule