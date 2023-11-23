`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/11 14:18:04
// Design Name: 
// Module Name: DHT11
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


module DHT11(
    input clk, reset_p,
    inout dht11_data,// 선 하나로 입출력을 다 수행해야 한다.
    output reg [7:0] humidity, temperature
//    output reg [7:0] LED_bar // For Debuging
    );
    
    // 파라미터는 상수 선언 시, 사용한다. C언어의 DEFINE처럼 쓰면 된다.
    // MCU의 Start bit 출력 단계
    parameter S_IDLE = 6'b000_001; // C언어랑은 달리, 다른 값으로 바꾸면 에러난다.
    parameter S_LOW_18MS = 6'b000_010; // 6가지 상태가 필요하므로 6bit
    parameter S_HIGH_20US = 6'b000_100; // 임피던스로 줘서 풀업으로 High 출력
    // DHT의 응답 단계
    parameter S_LOW_80US = 6'b001_000; // 80us동안 low를 유지.
    parameter S_HIGH_80US = 6'b010_000; // 80us동안 High를 유지.
    // Data 40bit 받는 단계
    parameter S_READ_DATA = 6'b100_000;
    
    // 얘네는 State machine을 따로 쓸 것이다.
    // 총 40번의 아래 State가 반복되면 data 전송 끝
    // 50us보다 크면 1, 작으면 0 
    parameter S_WAIT_PEDGE = 2'b01; // 얘가 뜨면, 카운트가 시작될 것이다. // pedge가 발생할때까지 기다리는 상태
    parameter S_WAIT_NEDGE = 2'b10; // nedge가 발생할 때까지 기다리는 상태
    
    // usec clock
    reg [21:0] count_usec; // reg를 0으로 초기화하면 무시되고 회로가 안 만들어져셔 상관없지만(시뮬레이션때만 적용됨), wire는 0으로 초기화하면 접지가 되어버린다.
    wire clk_usec;
    reg count_usec_e;
    clock_usec usec_clk(.clk(clk), .reset_p(reset_p), .clk_usec(clk_usec));
    
    // usec Counter
    always @(negedge clk, posedge reset_p) begin
        if(reset_p) count_usec = 0; // 리셋 누르면 출력이 0되도록 설계
        else begin
            // data가 들어올 때 동안만 count
            if(clk_usec && count_usec_e) count_usec = count_usec + 1; // enable이 1이고, clk_usec가 들어올 때만 count++
            else if(!count_usec_e) count_usec = 0;
        end
    end
    
    //DHT11 data의 edge를 잡아보자
    wire dht_pedge, dht_nedge;
    edge_detector_p edg_dht(.clk(clk), .cp_in(dht11_data), .rst(reset_p), .p_edge(dht_pedge), .n_edge(dht_nedge)); // Edge Detector
    
    // 상태를 기록할 상태 변수
    reg [5:0] state, next_state;
    reg [1:0] read_state;
    
    // State Machine
    always @(negedge clk, posedge reset_p) begin
        if(reset_p) state = S_IDLE;
        else state = next_state; // 매 클락마다 state를 next_state로 바꿔준다.
    end
    
    // inout은 reg로 선언하면 안된다.
    reg dht11_buffer;
    assign dht11_data = dht11_buffer; // 이렇게 reg 버퍼 선언해주고 assign으로 연결해주면 된다.
    
    // DHT11의 통신 프로토콜
    reg [39:0] temp_data; // 여기다 데이터를 저장할 것이다.
    reg [5:0] data_count; // 40회 반복을 위한 카운트 변수
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) begin
            count_usec_e = 0;
            next_state = S_IDLE;
            dht11_buffer = 1'bz; // 자신이 속한 always문 안에서 초기화해줘야된다.
            read_state = S_WAIT_PEDGE; // 초기 상태는 Pos edge를 기다리는 상태이다.
            data_count = 0; // data_count를 초기화해주지 않으면, Z에 계속 1을 더하는 꼴이 된다.
//            LED_bar = 8'd1111_1111; // 일단 처음에 다 꺼둔다.
        end
        else begin
            case(state) // Verilog에서는 case로 시작하고 endcase로 끝난다.
                S_IDLE : begin // 3초 흘려보내기(프로세스와 프로세스 사이에 약 3초의 대기 시간을 주어야 원활한 통신이 가능하다.)
                    if(count_usec < 22'd3_000_000) begin
//                    if(count_usec < 22'd3_0) begin // 시뮬레이션용으로 대기 시간 줄임.
                        count_usec_e = 1; // 매 usec마다 count_usec++됨, 3초를 세야 하니까 1준다.
                        dht11_buffer = 1'bz; // 3초 동안 아무것도 안 할 것이기 때문에, inout로 Z를 내보내줘야 한다.
//                        LED_bar[0] = 0;
                    end 
                    else begin // 3초가 지났다면,
                        count_usec_e = 0; // count_usec reset
                        next_state = S_LOW_18MS; // 끝났으면 다음 상태로 넘어간다.
//                        LED_bar = 8'd1111_1111; // LED 끄는 것은 다 여기서 끈다.(us 단위의 시간을 다루기 때문에 켜져 있는 시간이 너무 짧다. 따라서 다시 돌아왔을 때 꺼지는 걸로 셋팅)
                    end
                end
                S_LOW_18MS: begin // Low로 18ms 유지
//                    LED_bar[1] = 0;
                    if(count_usec < 22'd19_999) begin // 22'd17_999 = 18ms, 하지만 최소 18ms이므로 여유있게 20ms주자
                        count_usec_e = 1;
                        dht11_buffer = 0; // 0을 18ms동안 출력해야 하므로.
                    end 
                    else begin
                        next_state = S_HIGH_20US; // 끝났으면 다음 상태로 넘어간다.
                        count_usec_e = 0;
                        dht11_buffer = 1'bz;
                    end
                end
                S_HIGH_20US : begin // 응답을 20~40us 동안 기다려라~
//                    LED_bar[2] = 0;
                    // datasheet에 나온대로 만들어주긴 했는데, 여기서 막히니
//                    if(count_usec < 20) begin
//                        dht11_buffer = 1'bz; // 응답할 때까지 z준다.(풀업 연결되어있으므로 실제로는 1주는 꼴)
//                        count_usec_e = 1;
//                    end
//                    else if(count_usec < 40) begin
                    if(count_usec < 70) begin  // 넉넉하게 70정도 줘
                        dht11_buffer = 1'bz;
                        count_usec_e = 1;
                        if(dht_nedge) begin
                            next_state = S_LOW_80US;
                            count_usec_e = 0;
                        end
                    end
                    else begin // 40us가 지났는데도 falling edge가 안 나오면, 
                        next_state <= S_IDLE; // 처음으로 다시 돌아가고
                        count_usec_e <= 0; // counting을 멈춘다.
                    end
                end
                S_LOW_80US : begin // 약 80us동안 High를 기다려라.(여유를 좀 줘도 된다.)
//                    LED_bar[3] = 0;
//                    if(count_usec < 80) begin
                    if(count_usec < 90) begin // 여유있게 좀 더 준다.
                        if(dht_pedge) begin // 1이 들어오면
                            next_state = S_HIGH_80US; // 다음 단계로
                            count_usec_e = 0; // 카운팅 중단
                        end
                        else begin // 80us 이내지만 1이 안 뜨면
                            next_state = S_LOW_80US; // 현재 state를 유지
                            count_usec_e = 1; // count는 계속
                        end
                    end
                    else begin // 80us가 지나도 응답이 없다면,
                        next_state = S_IDLE; // 처음으로 돌아가서 Start bit 다시 보내고 통신을 재시작해라.
                        count_usec_e = 0;
                    end 
                end
                S_HIGH_80US : begin
//                    LED_bar[4] = 0;
                    if(count_usec < 90) begin // 80us 안에
                        if(dht_nedge) begin //  nedge가 발생했다면,
                            next_state = S_READ_DATA; // 다음 단계로 이동
                            count_usec_e = 0; // 카운팅 중단
                        end
                        else begin // 아직 nedge 발생 안 했다면,
                            next_state = S_HIGH_80US; // 일단 계속 기다려
                            count_usec_e = 1; // 카운팅하면서 기다려
                        end
                    end
                    else begin // 80us가 넘었는데도 nedge 발생 안 하면,
                        next_state = S_IDLE; // 처음으로 돌아가서 start bit 다시 받는다.
                        count_usec_e = 0; // 카운팅 중단
                    end
                end
                S_READ_DATA : begin // 이거 40번 반복하여 Data Transmit
//                    LED_bar[5] = 0;
                    case(read_state)
                        S_WAIT_PEDGE : begin // Reponse signal 이후 pedge 기다리는 상태
//                            LED_bar[6] = 0;
                            if(dht_pedge) begin // pedge 받으면,
                                read_state = S_WAIT_NEDGE; // 다음 단계로 이동
                                count_usec_e = 1; // pedge 들어오면서부터 count 시작
                            end
                            else begin // pedge안 나오면,
                                count_usec_e = 0; // counting 안 하고 있는 상태 유지
                            end
                        end
                        // 여기서 데이터 저장
                        S_WAIT_NEDGE : begin // pedge가 들어올 때까지 시간을 count하다가 50ms보다 크면 1, 50ms보다 작으면 0이며, 이 값을 시프트 레지스터에 저장할 것이다.
//                            LED_bar[7] = 0;
                            if(dht_nedge) begin
                                data_count = data_count + 1;
                                read_state = S_WAIT_PEDGE;
                                if(count_usec < 50) begin // 0 저장
                                    temp_data = {temp_data[38:0], 1'b0}; // 최하위비트에 하나씩 밀어넣는다.
                                end
                                else begin // 1 저장
                                    temp_data = {temp_data[38:0], 1'b1}; // 최하위비트에 하나씩 밀어넣는다.
                                end
                            end
                            else begin
                                read_state = S_WAIT_NEDGE; // 안들어오면 현 상태 유지
                                count_usec_e = 1; // 유지하면서 계속 count
                            end
                        end
                        default : read_state = S_WAIT_PEDGE; // 디폴트는 pedge 대기 상태
                    endcase
                    if(data_count >= 40) begin // 40개의 data를 다 받으면
                        data_count = 0;
                        next_state = S_IDLE; // IDLE 상태로 초기화
                        if(temp_data[39:32] + temp_data[31:24] + temp_data[23:16] + temp_data[15:8] == temp_data[7:0]) begin  // 정상적으로 전송되었는지 체크
                            humidity = temp_data[39:32]; // 소수자리 버리고 정수부분만 사용할 것이다.
                            temperature = temp_data[23:16]; // 소수자리 버리고 정수부분만 사용할 것이다.                         
                        end 
                    end
                end
                default : next_state = S_IDLE; // 디폴트는 IDLE 
            endcase
        end
    end
endmodule

