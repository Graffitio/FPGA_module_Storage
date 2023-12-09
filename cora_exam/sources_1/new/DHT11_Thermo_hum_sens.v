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
    inout dht11_data,// �� �ϳ��� ������� �� �����ؾ� �Ѵ�.
    output reg [7:0] humidity, temperature
//    output reg [7:0] LED_bar // For Debuging
    );
    
    // �Ķ���ʹ� ��� ���� ��, ����Ѵ�. C����� DEFINEó�� ���� �ȴ�.
    // MCU�� Start bit ��� �ܰ�
    parameter S_IDLE = 6'b000_001; // C������ �޸�, �ٸ� ������ �ٲٸ� ��������.
    parameter S_LOW_18MS = 6'b000_010; // 6���� ���°� �ʿ��ϹǷ� 6bit
    parameter S_HIGH_20US = 6'b000_100; // ���Ǵ����� �༭ Ǯ������ High ���
    // DHT�� ���� �ܰ�
    parameter S_LOW_80US = 6'b001_000; // 80us���� low�� ����.
    parameter S_HIGH_80US = 6'b010_000; // 80us���� High�� ����.
    // Data 40bit �޴� �ܰ�
    parameter S_READ_DATA = 6'b100_000;
    
    // ��״� State machine�� ���� �� ���̴�.
    // �� 40���� �Ʒ� State�� �ݺ��Ǹ� data ���� ��
    // 50us���� ũ�� 1, ������ 0 
    parameter S_WAIT_PEDGE = 2'b01; // �갡 �߸�, ī��Ʈ�� ���۵� ���̴�. // pedge�� �߻��Ҷ����� ��ٸ��� ����
    parameter S_WAIT_NEDGE = 2'b10; // nedge�� �߻��� ������ ��ٸ��� ����
    
    // usec clock
    reg [21:0] count_usec; // reg�� 0���� �ʱ�ȭ�ϸ� ���õǰ� ȸ�ΰ� �� ��������� ���������(�ùķ��̼Ƕ��� �����), wire�� 0���� �ʱ�ȭ�ϸ� ������ �Ǿ������.
    wire clk_usec;
    reg count_usec_e;
    clock_usec usec_clk(.clk(clk), .reset_p(reset_p), .clk_usec(clk_usec));
    
    // usec Counter
    always @(negedge clk, posedge reset_p) begin
        if(reset_p) count_usec = 0; // ���� ������ ����� 0�ǵ��� ����
        else begin
            // data�� ���� �� ���ȸ� count
            if(clk_usec && count_usec_e) count_usec = count_usec + 1; // enable�� 1�̰�, clk_usec�� ���� ���� count++
            else if(!count_usec_e) count_usec = 0;
        end
    end
    
    //DHT11 data�� edge�� ��ƺ���
    wire dht_pedge, dht_nedge;
    edge_detector_p edg_dht(.clk(clk), .cp_in(dht11_data), .rst(reset_p), .p_edge(dht_pedge), .n_edge(dht_nedge)); // Edge Detector
    
    // ���¸� ����� ���� ����
    reg [5:0] state, next_state;
    reg [1:0] read_state;
    
    // State Machine
    always @(negedge clk, posedge reset_p) begin
        if(reset_p) state = S_IDLE;
        else state = next_state; // �� Ŭ������ state�� next_state�� �ٲ��ش�.
    end
    
    // inout�� reg�� �����ϸ� �ȵȴ�.
    reg dht11_buffer;
    assign dht11_data = dht11_buffer; // �̷��� reg ���� �������ְ� assign���� �������ָ� �ȴ�.
    
    // DHT11�� ��� ��������
    reg [39:0] temp_data; // ����� �����͸� ������ ���̴�.
    reg [5:0] data_count; // 40ȸ �ݺ��� ���� ī��Ʈ ����
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) begin
            count_usec_e = 0;
            next_state = S_IDLE;
            dht11_buffer = 1'bz; // �ڽ��� ���� always�� �ȿ��� �ʱ�ȭ����ߵȴ�.
            read_state = S_WAIT_PEDGE; // �ʱ� ���´� Pos edge�� ��ٸ��� �����̴�.
            data_count = 0; // data_count�� �ʱ�ȭ������ ������, Z�� ��� 1�� ���ϴ� ���� �ȴ�.
//            LED_bar = 8'd1111_1111; // �ϴ� ó���� �� ���д�.
        end
        else begin
            case(state) // Verilog������ case�� �����ϰ� endcase�� ������.
                S_IDLE : begin // 3�� ���������(���μ����� ���μ��� ���̿� �� 3���� ��� �ð��� �־�� ��Ȱ�� ����� �����ϴ�.)
                    if(count_usec < 22'd3_000_000) begin
//                    if(count_usec < 22'd3_0) begin // �ùķ��̼ǿ����� ��� �ð� ����.
                        count_usec_e = 1; // �� usec���� count_usec++��, 3�ʸ� ���� �ϴϱ� 1�ش�.
                        dht11_buffer = 1'bz; // 3�� ���� �ƹ��͵� �� �� ���̱� ������, inout�� Z�� ��������� �Ѵ�.
//                        LED_bar[0] = 0;
                    end 
                    else begin // 3�ʰ� �����ٸ�,
                        count_usec_e = 0; // count_usec reset
                        next_state = S_LOW_18MS; // �������� ���� ���·� �Ѿ��.
//                        LED_bar = 8'd1111_1111; // LED ���� ���� �� ���⼭ ����.(us ������ �ð��� �ٷ�� ������ ���� �ִ� �ð��� �ʹ� ª��. ���� �ٽ� ���ƿ��� �� ������ �ɷ� ����)
                    end
                end
                S_LOW_18MS: begin // Low�� 18ms ����
//                    LED_bar[1] = 0;
                    if(count_usec < 22'd19_999) begin // 22'd17_999 = 18ms, ������ �ּ� 18ms�̹Ƿ� �����ְ� 20ms����
                        count_usec_e = 1;
                        dht11_buffer = 0; // 0�� 18ms���� ����ؾ� �ϹǷ�.
                    end 
                    else begin
                        next_state = S_HIGH_20US; // �������� ���� ���·� �Ѿ��.
                        count_usec_e = 0;
                        dht11_buffer = 1'bz;
                    end
                end
                S_HIGH_20US : begin // ������ 20~40us ���� ��ٷ���~
//                    LED_bar[2] = 0;
                    // datasheet�� ���´�� ������ֱ� �ߴµ�, ���⼭ ������
//                    if(count_usec < 20) begin
//                        dht11_buffer = 1'bz; // ������ ������ z�ش�.(Ǯ�� ����Ǿ������Ƿ� �����δ� 1�ִ� ��)
//                        count_usec_e = 1;
//                    end
//                    else if(count_usec < 40) begin
                    if(count_usec < 70) begin  // �˳��ϰ� 70���� ��
                        dht11_buffer = 1'bz;
                        count_usec_e = 1;
                        if(dht_nedge) begin
                            next_state = S_LOW_80US;
                            count_usec_e = 0;
                        end
                    end
                    else begin // 40us�� �����µ��� falling edge�� �� ������, 
                        next_state <= S_IDLE; // ó������ �ٽ� ���ư���
                        count_usec_e <= 0; // counting�� �����.
                    end
                end
                S_LOW_80US : begin // �� 80us���� High�� ��ٷ���.(������ �� �൵ �ȴ�.)
//                    LED_bar[3] = 0;
//                    if(count_usec < 80) begin
                    if(count_usec < 90) begin // �����ְ� �� �� �ش�.
                        if(dht_pedge) begin // 1�� ������
                            next_state = S_HIGH_80US; // ���� �ܰ��
                            count_usec_e = 0; // ī���� �ߴ�
                        end
                        else begin // 80us �̳����� 1�� �� �߸�
                            next_state = S_LOW_80US; // ���� state�� ����
                            count_usec_e = 1; // count�� ���
                        end
                    end
                    else begin // 80us�� ������ ������ ���ٸ�,
                        next_state = S_IDLE; // ó������ ���ư��� Start bit �ٽ� ������ ����� ������ض�.
                        count_usec_e = 0;
                    end 
                end
                S_HIGH_80US : begin
//                    LED_bar[4] = 0;
                    if(count_usec < 90) begin // 80us �ȿ�
                        if(dht_nedge) begin //  nedge�� �߻��ߴٸ�,
                            next_state = S_READ_DATA; // ���� �ܰ�� �̵�
                            count_usec_e = 0; // ī���� �ߴ�
                        end
                        else begin // ���� nedge �߻� �� �ߴٸ�,
                            next_state = S_HIGH_80US; // �ϴ� ��� ��ٷ�
                            count_usec_e = 1; // ī�����ϸ鼭 ��ٷ�
                        end
                    end
                    else begin // 80us�� �Ѿ��µ��� nedge �߻� �� �ϸ�,
                        next_state = S_IDLE; // ó������ ���ư��� start bit �ٽ� �޴´�.
                        count_usec_e = 0; // ī���� �ߴ�
                    end
                end
                S_READ_DATA : begin // �̰� 40�� �ݺ��Ͽ� Data Transmit
//                    LED_bar[5] = 0;
                    case(read_state)
                        S_WAIT_PEDGE : begin // Reponse signal ���� pedge ��ٸ��� ����
//                            LED_bar[6] = 0;
                            if(dht_pedge) begin // pedge ������,
                                read_state = S_WAIT_NEDGE; // ���� �ܰ�� �̵�
                                count_usec_e = 1; // pedge �����鼭���� count ����
                            end
                            else begin // pedge�� ������,
                                count_usec_e = 0; // counting �� �ϰ� �ִ� ���� ����
                            end
                        end
                        // ���⼭ ������ ����
                        S_WAIT_NEDGE : begin // pedge�� ���� ������ �ð��� count�ϴٰ� 50ms���� ũ�� 1, 50ms���� ������ 0�̸�, �� ���� ����Ʈ �������Ϳ� ������ ���̴�.
//                            LED_bar[7] = 0;
                            if(dht_nedge) begin
                                data_count = data_count + 1;
                                read_state = S_WAIT_PEDGE;
                                if(count_usec < 50) begin // 0 ����
                                    temp_data = {temp_data[38:0], 1'b0}; // ��������Ʈ�� �ϳ��� �о�ִ´�.
                                end
                                else begin // 1 ����
                                    temp_data = {temp_data[38:0], 1'b1}; // ��������Ʈ�� �ϳ��� �о�ִ´�.
                                end
                            end
                            else begin
                                read_state = S_WAIT_NEDGE; // �ȵ����� �� ���� ����
                                count_usec_e = 1; // �����ϸ鼭 ��� count
                            end
                        end
                        default : read_state = S_WAIT_PEDGE; // ����Ʈ�� pedge ��� ����
                    endcase
                    if(data_count >= 40) begin // 40���� data�� �� ������
                        data_count = 0;
                        next_state = S_IDLE; // IDLE ���·� �ʱ�ȭ
                        if(temp_data[39:32] + temp_data[31:24] + temp_data[23:16] + temp_data[15:8] == temp_data[7:0]) begin  // ���������� ���۵Ǿ����� üũ
                            humidity = temp_data[39:32]; // �Ҽ��ڸ� ������ �����κи� ����� ���̴�.
                            temperature = temp_data[23:16]; // �Ҽ��ڸ� ������ �����κи� ����� ���̴�.                         
                        end 
                    end
                end
                default : next_state = S_IDLE; // ����Ʈ�� IDLE 
            endcase
        end
    end
endmodule

