`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/20 12:18:53
// Design Name: 
// Module Name: PWM_100
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


module PWM_100(
    input clk, rstp,
    input [6:0] duty, // ��Ƽ�� ���� ���� 
    input [13:0] pwm_freq, // parameter ��� ���⿡ �����ص� �ȴ�. 10,000Hz �� �Ŵϱ� 14bit
    output reg pwm_100pc // pc : % -> �ϳ��� ��Ƽ(1/100)�̶�� ��
    );
    
    reg [7:0] clk_div;
    always @(posedge clk) begin
        clk_div = clk_div + 1;
    end
    
    parameter sys_clk_freq = 125_000_000; // cora boadr�� �ý��� Ŭ��
//    parameter pwm_freq = 1000; // 1000Hz¥�� pwm�� ����� ���� define
    
    reg [26:0] cnt;
    reg clk_freqX100; // 100��� Ŭ�� �ֱ� ������ ���� ���� 
    always @(posedge clk, posedge rstp) begin
        if(rstp) begin
            cnt = 0;
            clk_freqX100 = 0;
        end
        else begin
            // 125000���� ī��Ʈ�ϰ� Ŭ�� �ֱ� ����
//            if(cnt >= 124_999) begin  // 1000Hz¥���� ���� ���̱� ������ sys clk�� 1000���� ����
//            if(cnt >= (sys_clk_freq / pwm_freq / 2)) begin // ��۽��Ѽ� ����� ���̴ϱ� 2�� ����
//            if(cnt >= (sys_clk_freq / pwm_freq / 2 / 100)) begin // ��Ƽ�� ����ϱ� ���� 100 �����ְ� clk_freqX100�� ī��Ʈ�Ͽ� 0�� 1�� �ο��Ѵ�.
//            if(cnt >= (sys_clk_freq / pwm_freq / 200)) begin // always�� ��� �ö����� ������ �����ϰ� �ǹǷ�, Negative Slack �߻� ���ɼ� ������. �����ϰ� �ٲ�����
            if(cnt >= (625000 / pwm_freq)) begin // always�� ��� �ö����� ������ �����ϰ� �ǹǷ�, Negative Slack �߻� ���ɼ� ������. �����ϰ� �ٲ�����
                cnt = 0;
                clk_freqX100 = ~clk_freqX100; // pwm �� �ֱ⸦ ����� ���� ����
            end
            else begin
                cnt = cnt + 1; // Ŭ���� ���� ī����
            end
//            // Duty cycle : 50%
//            if(cnt < 62500) begin
//                pwm_100pc = 0;
//            end
//            else begin
//                pwm_100pc = 1;
//            end
        end
    end 
    
    wire clk_freqX100_n;
    edge_detector_p edg(.clk(clk), .cp_in(clk_freqX100), .rst(rstp), .n_edge(clk_freqX100_n)); // Edge Detector
    // ���� always������ clk_freqX100 �����ϰ� 4ns �Ŀ��� edge ���� ���̴�.
    // Timing ������ ���� posedge clk�� ����ϴ� edge detector�� ����ϴ� ���� ����.
    // ���� ��Ȳ������ nedge clk���� pedge clk�� �� 2������ �� ������ �ִ�.
    
    reg [6:0] cnt_duty; // ��Ƽ����Ŭ�� ī���� ���� 
    always @(negedge clk, posedge rstp) begin
        if(rstp) begin
            cnt_duty = 0;
            pwm_100pc = 0;
        end
        else if(clk_freqX100_n) begin
            if(cnt_duty >= 99) begin
                cnt_duty = 0;    
            end
            else begin
                cnt_duty = cnt_duty + 1;
            end
            if(cnt_duty < duty) pwm_100pc = 1; // ���� ��� 50�� duty�� ������, 50������ 1, �������� 0
            else pwm_100pc = 0;
        end
    end 
endmodule


module PWM_1000(
    input clk, rstp,
    input [9:0] duty, // ��Ƽ�� ���� ���� 
    input [13:0] pwm_freq, // parameter ��� ���⿡ �����ص� �ȴ�. 10,000Hz �� �Ŵϱ� 14bit
    output reg pwm_1000pc // pc : % -> �ϳ��� ��Ƽ(1/100)�̶�� ��
    );
    
    parameter sys_clk_freq = 100_000_000; // cora boadr�� �ý��� Ŭ��
//    parameter pwm_freq = 1000; // 1000Hz¥�� pwm�� ����� ���� define
    
    wire clk_usec;
    reg [17:0] pwm_temp;
    clock_usec usec_clk(.clk(clk), .reset_p(rst), .clk_usec(clk_usec));
    always @(posedge clk) begin
        pwm_temp = 50000 / pwm_freq;
    end
    
    
    reg [26:0] cnt;
    reg clk_freqX1000; // pwm �ֱ��� 1000��� Ŭ�� �ֱ� ������ ���� ���� 
    always @(posedge clk, posedge rstp) begin
        if(rstp) begin
            cnt = 0;
            clk_freqX1000 = 0;
        end
        else begin
            // 125000���� ī��Ʈ�ϰ� Ŭ�� �ֱ� ����
//            if(cnt >= 124_999) begin  // 1000Hz¥���� ���� ���̱� ������ sys clk�� 1000���� ����
//            if(cnt >= (sys_clk_freq / pwm_freq / 2)) begin // ��۽��Ѽ� ����� ���̴ϱ� 2�� ����
//            if(cnt >= (sys_clk_freq / pwm_freq / 2 / 100)) begin // ��Ƽ�� ����ϱ� ���� 100 �����ְ� clk_freqX100�� ī��Ʈ�Ͽ� 0�� 1�� �ο��Ѵ�.
//            if(cnt >= (sys_clk_freq / pwm_freq / 2000)) begin // always�� ��� �ö����� ������ �����ϰ� �ǹǷ�, Negative Slack �߻� ���ɼ� ������. �����ϰ� �ٲ�����
//            if(cnt >= (50000 / pwm_freq)) begin // always�� ��� �ö����� ������ �����ϰ� �ǹǷ�, Negative Slack �߻� ���ɼ� ������. �����ϰ� �ٲ�����
            if(cnt >= pwm_temp) begin // always�� ��� �ö����� ������ �����ϰ� �ǹǷ�, Negative Slack �߻� ���ɼ� ������. �����ϰ� �ٲ�����
                cnt = 0;
                clk_freqX1000 = ~clk_freqX1000; // pwm �� �ֱ⸦ ����� ���� ����
            end
            else begin
                cnt = cnt + 1; // Ŭ���� ���� ī����
            end
//            // Duty cycle : 50%
//            if(cnt < 62500) begin
//                pwm_100pc = 0;
//            end
//            else begin
//                pwm_100pc = 1;
//            end
        end
    end 
    
    wire clk_freqX1000_n;
    edge_detector_p edg(.clk(clk), .cp_in(clk_freqX1000), .rst(rstp), .n_edge(clk_freqX1000_n)); // Edge Detector
    // ���� always������ clk_freqX100 �����ϰ� 4ns �Ŀ��� edge ���� ���̴�.
    // Timing ������ ���� posedge clk�� ����ϴ� edge detector�� ����ϴ� ���� ����.
    // ���� ��Ȳ������ nedge clk���� pedge clk�� �� 2������ �� ������ �ִ�.
    
    reg [9:0] cnt_duty; // ��Ƽ����Ŭ�� ī���� ���� 
    always @(posedge clk, posedge rstp) begin
        if(rstp) begin
            cnt_duty = 0;
            pwm_1000pc = 0;
        end
        else if(clk_freqX1000_n) begin
            if(cnt_duty >= 999) begin
                cnt_duty = 0;    
            end
            else begin
                cnt_duty = cnt_duty + 1;
            end
            if(cnt_duty < duty) pwm_1000pc = 1; // ���� ��� 50�� duty�� ������, 50������ 1, �������� 0
            else pwm_1000pc = 0;
        end
    end 
endmodule





module PWM_100_song(
    input clk, rstp,
    input [6:0] duty, // ��Ƽ�� ���� ���� 
    input [13:0] pwm_freq, // parameter ��� ���⿡ �����ص� �ȴ�. 10,000Hz �� �Ŵϱ� 14bit
    output reg pwm_100pc // pc : % -> �ϳ��� ��Ƽ(1/100)�̶�� ��
    );
    
    reg [7:0] clk_div; // ������ �������� ���� �߻��� Slack�� �����ϱ� ���� ���ֱ�
    always @(posedge clk) begin
        clk_div = clk_div + 1;
    end
    
    parameter sys_clk_freq = 125_000_000; // cora boadr�� �ý��� Ŭ��
//    parameter pwm_freq = 1000; // 1000Hz¥�� pwm�� ����� ���� define
    
    reg [26:0] cnt;
    reg clk_freqX100; // 100��� Ŭ�� �ֱ� ������ ���� ���� 
    reg [14:0] pwm_temp;
    always @(posedge clk_div[7] or posedge rstp) begin // ������ ������ 1Ŭ�� �ȿ� �������� �ʾ�. �׷��ϱ� �ð��� �̷��� ���ָ� �� ����
        if(rstp) begin
            pwm_temp = 0;
        end
        else begin
             pwm_temp = 625000 / pwm_freq;
        end
    end
    
    always @(posedge clk or posedge rstp) begin 
        if(rstp) begin
            cnt = 0;
            clk_freqX100 = 0;
        end
        else begin
            // 125000���� ī��Ʈ�ϰ� Ŭ�� �ֱ� ����
//            if(cnt >= 124_999) begin  // 1000Hz¥���� ���� ���̱� ������ sys clk�� 1000���� ����
//            if(cnt >= (sys_clk_freq / pwm_freq / 2)) begin // ��۽��Ѽ� ����� ���̴ϱ� 2�� ����
//            if(cnt >= (sys_clk_freq / pwm_freq / 2 / 100)) begin // ��Ƽ�� ����ϱ� ���� 100 �����ְ� clk_freqX100�� ī��Ʈ�Ͽ� 0�� 1�� �ο��Ѵ�.
//            if(cnt >= (sys_clk_freq / pwm_freq / 200)) begin // always�� ��� �ö����� ������ �����ϰ� �ǹǷ�, Negative Slack �߻� ���ɼ� ������. �����ϰ� �ٲ�����
            if(cnt >= (pwm_temp)) begin // always�� ��� �ö����� ������ �����ϰ� �ǹǷ�, Negative Slack �߻� ���ɼ� ������. �����ϰ� �ٲ�����
                cnt = 0;
                clk_freqX100 = ~clk_freqX100; // pwm �� �ֱ⸦ ����� ���� ����
            end
            else begin
                cnt = cnt + 1; // Ŭ���� ���� ī����
            end
//            // Duty cycle : 50%
//            if(cnt < 62500) begin
//                pwm_100pc = 0;
//            end
//            else begin
//                pwm_100pc = 1;
//            end
        end
    end 
    
    wire clk_freqX100_n;
    edge_detector_p edg(.clk(clk), .cp_in(clk_freqX100), .rst(rstp), .n_edge(clk_freqX100_n)); // Edge Detector
    // ���� always������ clk_freqX100 �����ϰ� 4ns �Ŀ��� edge ���� ���̴�.
    // Timing ������ ���� posedge clk�� ����ϴ� edge detector�� ����ϴ� ���� ����.
    // ���� ��Ȳ������ nedge clk���� pedge clk�� �� 2������ �� ������ �ִ�.
    
    reg [6:0] cnt_duty; // ��Ƽ����Ŭ�� ī���� ���� 
    always @(negedge clk, posedge rstp) begin
        if(rstp) begin
            cnt_duty = 0;
            pwm_100pc = 0;
        end
        else if(clk_freqX100_n) begin
            if(cnt_duty >= 99) begin
                cnt_duty = 0;    
            end
            else begin
                cnt_duty = cnt_duty + 1;
            end
            if(cnt_duty < duty) pwm_100pc = 1; // ���� ��� 50�� duty�� ������, 50������ 1, �������� 0
            else pwm_100pc = 0;
        end
    end 
endmodule





module PWM_1000_led(
    input clk, rstp,
    input [9:0] duty, // ��Ƽ�� ���� ���� 
    input [13:0] pwm_freq, // parameter ��� ���⿡ �����ص� �ȴ�. 10,000Hz �� �Ŵϱ� 14bit
    output reg pwm_1000pc // pc : % -> �ϳ��� ��Ƽ(1/100)�̶�� ��
    );
    
    reg [7:0] clk_div; // ������ �������� ���� �߻��� Slack�� �����ϱ� ���� ���ֱ�
    always @(posedge clk) begin
        clk_div = clk_div + 1;
    end
    
    parameter sys_clk_freq = 125_000_000; // cora boadr�� �ý��� Ŭ��
//    parameter pwm_freq = 1000; // 1000Hz¥�� pwm�� ����� ���� define
    
    reg [26:0] cnt;
    reg clk_freqX1000; // pwm �ֱ��� 1000��� Ŭ�� �ֱ� ������ ���� ���� 
    reg [14:0] pwm_temp;
    always @(posedge clk_div[3] or posedge rstp) begin // ������ ������ 1Ŭ�� �ȿ� �������� �ʾ�. �׷��ϱ� �ð��� �̷��� ���ָ� �� ����
        if(rstp) begin
            pwm_temp = 0;
        end
        else begin
             pwm_temp = 625000 / pwm_freq;
        end
    end
    
    
    always @(posedge clk, posedge rstp) begin
        if(rstp) begin
            cnt = 0;
            clk_freqX1000 = 0;
        end
        else begin
            // 125000���� ī��Ʈ�ϰ� Ŭ�� �ֱ� ����
//            if(cnt >= 124_999) begin  // 1000Hz¥���� ���� ���̱� ������ sys clk�� 1000���� ����
//            if(cnt >= (sys_clk_freq / pwm_freq / 2)) begin // ��۽��Ѽ� ����� ���̴ϱ� 2�� ����
//            if(cnt >= (sys_clk_freq / pwm_freq / 2 / 100)) begin // ��Ƽ�� ����ϱ� ���� 100 �����ְ� clk_freqX100�� ī��Ʈ�Ͽ� 0�� 1�� �ο��Ѵ�.
//            if(cnt >= (sys_clk_freq / pwm_freq / 2000)) begin // always�� ��� �ö����� ������ �����ϰ� �ǹǷ�, Negative Slack �߻� ���ɼ� ������. �����ϰ� �ٲ�����
            if(cnt >= (pwm_temp)) begin // always�� ��� �ö����� ������ �����ϰ� �ǹǷ�, Negative Slack �߻� ���ɼ� ������. �����ϰ� �ٲ�����
                cnt = 0;
                clk_freqX1000 = ~clk_freqX1000; // pwm �� �ֱ⸦ ����� ���� ����
            end
            else begin
                cnt = cnt + 1; // Ŭ���� ���� ī����
            end
//            // Duty cycle : 50%
//            if(cnt < 62500) begin
//                pwm_100pc = 0;
//            end
//            else begin
//                pwm_100pc = 1;
//            end
        end
    end 
    
    wire clk_freqX1000_n;
    edge_detector_p edg(.clk(clk), .cp_in(clk_freqX1000), .rst(rstp), .n_edge(clk_freqX1000_n)); // Edge Detector
    // ���� always������ clk_freqX100 �����ϰ� 4ns �Ŀ��� edge ���� ���̴�.
    // Timing ������ ���� posedge clk�� ����ϴ� edge detector�� ����ϴ� ���� ����.
    // ���� ��Ȳ������ nedge clk���� pedge clk�� �� 2������ �� ������ �ִ�.
    
    reg [9:0] cnt_duty; // ��Ƽ����Ŭ�� ī���� ���� 
    always @(posedge clk, posedge rstp) begin
        if(rstp) begin
            cnt_duty = 0;
            pwm_1000pc = 0;
        end
        else if(clk_freqX1000_n) begin
            if(cnt_duty >= 999) begin
                cnt_duty = 0;    
            end
            else begin
                cnt_duty = cnt_duty + 1;
            end
            if(cnt_duty < duty) pwm_1000pc = 1; // ���� ��� 50�� duty�� ������, 50������ 1, �������� 0
            else pwm_1000pc = 0;
        end
    end 
endmodule