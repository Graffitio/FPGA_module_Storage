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
    // ��� input output�� ���� �ֱ� ������
    // ��� FSM�� �� �ᵵ �ȴ�.
    // ���� ���� ��Բ� ������൵ ��.
    
    // 2'b00, 2'b01, 2'b10, 2'b11 �̷��� ���൵ �Ǵµ�, �����α״� �Ʒ�ó�� ��������.
    // ���¸ӽ� �� ���� ��ȯ�ڵ�� ������ָ� �ȴ�.
    parameter   S_IDLE = 4'b0001;
    parameter   S_TRIG = 4'b0010;
    parameter   S_WAIT_PEDGE = 4'b0100;
    parameter   S_WAIT_NEDGE = 4'b1000;
    
    reg [16:0] count_usec; // �˳��� �ָ� ����. �޴��󿡴� 60ms�� ������ �ֶ� �ߴµ�, �����δ� 70ms �Ѿ�� �ɸ���.
    wire clk_usec;
    reg count_usec_e;
    clock_usec usec_clk(.clk(clk), .reset_p(rst), .clk_usec(clk_usec));
    
    // usec Counter
    always @(negedge clk, posedge rst) begin
        if(rst) count_usec = 0; // ���� ������ ����� 0�ǵ��� ����
        else begin
            // data�� ���� �� ���ȸ� count
            if(clk_usec && count_usec_e) count_usec = count_usec + 1; // enable�� 1�̰�, clk_usec�� ���� ���� count++
            else if(!count_usec_e) count_usec = 0;
        end
    end
    
    //Edge�� ������ ���� �ɷ� clk ����ȭ
    wire echo_pedge, echo_nedge;
    edge_detector_n edg_echo(.clk(clk), .cp_in(echo), .rst(rst), .p_edge(echo_pedge), .n_edge(echo_nedge)); // Edge Detector
    
    reg [5:0] state, next_state;
    // State Machine
    always @(negedge clk, posedge rst) begin
        if(rst) state = S_IDLE;
        else state = next_state; // �� Ŭ������ state�� next_state�� �ٲ��ش�.
    end
    
//    reg [16:0] echo_pw; // count_usec �����ϴ� echo pulse width ��������
    reg [16:0] temp_value [15:0]; // �迭�� �ڿ��� �����Ѵ� 17bit¥�� 16��¥�� // �迭�� ¦�� ���� ���ִ� ���� ����. �׷��� �����⵵ ���� ���⿡�� ����
    reg [20:0] sum_value; // �·� ����Ʈ 4�� �Ѵٴ� �ǹ�. 16�� ���ϴ� ��. -> 21bit�ϱ� 17bit���� 4bit �� �ʿ��ϴ�
    reg [3:0] index; // 0~15������ ������ ����ϴϱ� 4bit
    always@(posedge clk, posedge rst) begin
        if(rst) begin
//            echo_pw <= 0;
//            state <= S_IDLE;
            LED_bar <= 8'b0000_0000;
            count_usec_e <= 0; // always�� �ȿ��� �ǵ帮�� ������ reset���� �� �ʱ�ȭ����� �ȴ�.(�ùķ��̼ǿ��� Z�� ��)
            next_state <= 0;
            trig <= 0;
            index <= 0; // ��¥�� 16�Ѿ�� 0���� ���ư��� ��ī���� ���¶� ���� ���� �� ���൵ �Ǵ¿� �ϴ� ���ִ°� ����. 
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
                    else begin // ������ ����, pedge �߻� �� �ϸ� �ƹ� �͵� �� �ϴ� �����̴�. ��� �ƹ� �͵� �� �Ƹ�, else ���� ����
                        count_usec_e <= 0;
                        next_state <= S_WAIT_PEDGE;
                    end
                end
                S_WAIT_NEDGE : begin
                    LED_bar[3] <= 1;
                    if(echo_nedge) begin
//                        temp_value[0] <= count_usec; // 0�� index�� ����
                        temp_value[index] <= count_usec;
                        index <= index + 1; // 2�� �ŵ����� ���� if�� �Ἥ ���� �߰��� �ʿ䰡 ����. 15���� 16, 7����8�̴ϱ�~ �ڵ������� 1���ϸ� 0���� �ʱ�ȭ��
                        count_usec_e <= 0;
                        next_state <= S_IDLE;
                    end
                    else begin // �� ���൵ �Ǵ� �ǵ�, �������� ���� �ۼ�
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

    // sum_value ���
    reg [5:0] i;// 4bit�� �ϸ� 16���� �۱� ������ for������ �� �������´�. ������ ��Ʈ���� 16�� �� �Ѿ
    always@(posedge clk_usec, posedge rst) begin
        if(rst) begin
            sum_value <= 0;
            i <= 0;
        end
        else begin
            sum_value = 0;
            for(i = 0; i < 16 ; i = i+1) begin // �� for���� 1 clk�� �� ���� �� �����Ƿ� clk_usec�� ����(clk���� �Ƹ� WNS -�� ���̴�.)
                sum_value = sum_value + temp_value[i];
            end
        end
    end
    
    // ������ �𵨸����� ������ش�. assign�ᰡ���� ���������� ����� pdt �߻� Ȯ�� ����
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
