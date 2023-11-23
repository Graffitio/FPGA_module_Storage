`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 14:03:07
// Design Name: 
// Module Name: UltraSonic_Profsr
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


module UltraSonic_Profsr(
    input clk, rst,
    input echo,
    output reg trig,
    output reg [15:0] distance_cm,
    output reg [7:0] LED_bar
    );
    // 얘는 input output이 따로 있기 때문에
    // 사실 FSM을 안 써도 된다.
    // 각각 따로 놀게끔 만들어줘도 됨.
    
    // 2'b00, 2'b01, 2'b10, 2'b11 이렇게 해줘도 되는데, 베릴로그는 아래처럼 만들어버림.
    // 상태머신 쓸 떄는 원환코드로 만들어주면 된다.
    parameter   S_IDLE = 4'b0001;
    parameter   S_TRIG = 4'b0010;
    parameter   S_WAIT_PEDGE = 4'b0100;
    parameter   S_WAIT_NEDGE = 4'b1000;
    
    reg [16:0] count_usec; // 넉넉히 주면 좋다. 메뉴얼에는 60ms의 여유를 주라 했는데, 실제로는 70ms 넘어서도 걸린다.
    wire clk_usec;
    reg count_usec_e;
    clock_usec usec_clk(.clk(clk), .reset_p(rst), .clk_usec(clk_usec));
    
    // usec Counter
    always @(negedge clk, posedge rst) begin
        if(rst) count_usec = 0; // 리셋 누르면 출력이 0되도록 설계
        else begin
            // data가 들어올 때 동안만 count
            if(clk_usec && count_usec_e) count_usec = count_usec + 1; // enable이 1이고, clk_usec가 들어올 때만 count++
            else if(!count_usec_e) count_usec = 0;
        end
    end
    
    //Edge를 보내서 쓰는 걸로 clk 동기화
    wire echo_pedge, echo_nedge;
    edge_detector_n edg_echo(.clk(clk), .cp_in(echo), .rst(rst), .p_edge(echo_pedge), .n_edge(echo_nedge)); // Edge Detector
    
    reg [5:0] state, next_state;
    // State Machine
    always @(negedge clk, posedge rst) begin
        if(rst) state = S_IDLE;
        else state = next_state; // 매 클락마다 state를 next_state로 바꿔준다.
    end
    
//    reg [16:0] echo_pw; // count_usec 저장하는 echo pulse width 레지스터
    reg [16:0] temp_value [15:0]; // 배열은 뒤에다 선언한다 17bit짜리 16개짜리 // 배열은 짝수 개로 해주는 것이 좋다. 그래야 나누기도 쉽고 보기에도 편함
    reg [20:0] sum_value; // 좌로 시프트 4개 한다는 의미. 16번 더하는 것. -> 21bit니까 17bit에서 4bit 더 필요하다
    reg [3:0] index; // 0~15까지만 나오면 충분하니까 4bit
    always@(posedge clk, posedge rst) begin
        if(rst) begin
//            echo_pw <= 0;
//            state <= S_IDLE;
            LED_bar <= 8'b0000_0000;
            count_usec_e <= 0; // always문 안에서 건드리는 변수는 reset에서 꼭 초기화해줘야 된다.(시뮬레이션에서 Z로 뜸)
            next_state <= 0;
            trig <= 0;
            index <= 0; // 어짜피 16넘어가면 0으로 돌아가는 링카운터 형태라 굳이 리셋 안 해줘도 되는에 일단 해주는게 편함. 
        end
        else begin
            case(state)
                S_IDLE : begin
                    if(count_usec < 22'd100_000) begin
                        count_usec_e <= 1;
                        LED_bar[0] <= 1;
                    end
                    else begin
                        count_usec_e <= 0;
                        next_state <= S_TRIG;
                        LED_bar <= 8'b0000_0000;
                    end
                end
                S_TRIG : begin
                    if(count_usec < 22'd12) begin
                        count_usec_e <= 1;
                        trig <= 1;
                        LED_bar[1] <= 1;
                    end
                    else begin
                        next_state <= S_WAIT_PEDGE;
                        count_usec_e <= 0;
                        trig <= 0;
                    end
                end
                S_WAIT_PEDGE : begin
                    LED_bar[2] <= 1;
                    if(echo_pedge) begin
                        count_usec_e <= 1;
                        next_state <= S_WAIT_NEDGE;
                    end
                    else begin // 따지고 보면, pedge 발생 안 하면 아무 것도 안 하는 상태이다. 사실 아무 것도 안 아면, else 생략 가능
                        count_usec_e <= 0;
                        next_state <= S_WAIT_PEDGE;
                    end
                end
                S_WAIT_NEDGE : begin
                    LED_bar[3] <= 1;
                    if(echo_nedge) begin
//                        temp_value[0] <= count_usec; // 0번 index에 접근
                        temp_value[index] <= count_usec;
                        index <= index + 1; // 2의 거듭제곱 쓰면 if문 써서 조건 추가할 필요가 없다. 15다음 16, 7다음8이니까~ 자동적으로 1더하면 0으로 초기화됨
                        count_usec_e <= 0;
                        next_state <= S_IDLE;
                    end
                    else begin // 안 써줘도 되는 건데, 가독성을 위해 작성
                        count_usec_e <= 1;
                        next_state <= S_WAIT_NEDGE; 
                    end
                end
                default : begin
                    count_usec_e <= 0;
                    next_state <= S_IDLE;
                end
            endcase
        end
    end

//    reg clk_div_2;
//    always@(posedge clk) clk_div_2 = ~clk_div_2;

    // sum_value 계산
    reg [5:0] i;// 4bit로 하면 16보다 작기 때문에 for문에서 못 빠져나온다. 마지막 비트에서 16을 못 넘어감
    always@(posedge clk_usec, posedge rst) begin
        if(rst) begin
            sum_value <= 0;
            i <= 0;
        end
        else begin
            sum_value = 0;
            for(i = 0; i < 16 ; i = i+1) begin // 이 for문은 1 clk에 안 끝날 것 같으므로 clk_usec을 쓰자(clk쓰면 아마 WNS -뜰 것이다.)
                sum_value = sum_value + temp_value[i];
            end
        end
    end
    
    // 동작적 모델링으로 만들어준다. assign써가지고 구조적으로 만들면 pdt 발생 확률 증가
    always @(posedge clk_usec, posedge rst) begin
        if(rst) begin
            distance_cm <= 0;
        end
        else begin
//            distance_cm <= echo_pw / 58;
            distance_cm <= sum_value[20:4] / 58;            
        end
    end

endmodule
