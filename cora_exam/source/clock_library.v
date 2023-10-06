`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/23 14:37:36
// Design Name: 
// Module Name: clock_library
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

// Cora board sys clock : 125MHz
// 1 clock 당, 8ns

// Micro sec clock
module clock_usec_(
    input clk, reset_p,
    output clk_usec
    );
    
    // 125개 카운트하면 1us
    reg [6:0] cnt_8nsec;
    wire cp_usec; // cp : clock pulse
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_8nsec = 0; // reset이 들어오면 cnt = 0
        else if (cnt_8nsec >= 124) cnt_8nsec = 0; // 0부터 124번까지 카운트하면 다시 0으로
        else cnt_8nsec = cnt_8nsec + 1;
    end
    
    assign cp_usec = cnt_8nsec < 63 ? 0 : 1; // 0~62 : 0, 63~124 : 1 
    
    // 비정규 clock이므로 동기화가 필요하다.
    edge_detector_n edg(.clk(clk), .cp_in(cp_usec), .rst(reset_p), .n_edge(clk_usec)); /// 안 쓰는 출력은 빼버리면 된다.
    
endmodule


// Mili sec clock
module clock_msec_(
    input clk_usec, reset_p,
    output clk_msec
    );
    
    // 1000개 카운트하면 1ms
//    reg [9:0] cnt_usec;
//    wire cp_msec; // cp : clock pulse
    
//    always @(posedge clk, posedge reset_p) begin
//        if(reset_p) cnt_usec = 0; // reset이 들어오면 cnt = 0
//        else if (cnt_usec >= 999) cnt_usec = 0; // 0부터 125번까지 카운트하면 다시 0으로
//        else cnt_usec = cnt_usec + 1;
//    end
    
//    assign cp_msec = cnt_usec < 499 ? 0 : 1; // 0~498 : 0, 499~1000 : 1 

    // 1000개 카운트하면 1ms
    reg [8:0] cnt_usec;
    reg cp_msec; // cp : clock pulse
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_usec = 0; // reset이 들어오면 cnt = 0
        else if (cnt_usec >= 499) begin
            cnt_usec = 0; // 0부터 499번까지 카운트하면 다시 0으로
            cp_msec = ~cp_msec;
        end
        else cnt_usec = cnt_usec + 1;
    end // 이렇게 카운트가 짝수일 경우, 위와 같이 코딩하여 1bit 줄일 수 있다.
    
    // 비정규 clock이므로 동기화가 필요하다.
    edge_detector_n edg(.clk(clk), .cp_in(cp_msec), .rst(reset_p), .n_edge(clk_msec)); /// 안 쓰는 출력은 빼버리면 된다.
    
endmodule



// sec clock
module clock_sec_(
    input clk_msec, reset_p,
    output clk_sec
    );

    // 1000개 카운트하면 1s
    reg [8:0] cnt_msec;
    reg cp_sec; // cp : clock pulse
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_msec = 0; // reset이 들어오면 cnt = 0
        else if (cnt_msec >= 499) begin
            cnt_msec = 0; // 0부터 499번까지 카운트하면 다시 0으로
            cp_sec = ~cp_sec; // clock pulse 반전
        end
        else cnt_msec = cnt_msec + 1;
    end // 이렇게 카운트가 짝수일 경우, 위와 같이 코딩하여 1bit 줄일 수 있다.
    
    // 비정규 clock이므로 동기화가 필요하다.
    edge_detector_n edg(.clk(clk), .cp_in(cp_sec), .rst(reset_p), .n_edge(clk_sec)); /// 안 쓰는 출력은 빼버리면 된다.
    
endmodule



// min clock
module clock_min_(
    input clk_sec, reset_p,
    output clk_min
    );

    // 60개 카운트하면 1s
    reg [8:0] cnt_sec;
    reg cp_min; // cp : clock pulse
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_sec = 0; // reset이 들어오면 cnt = 0
        else if (cnt_sec >= 29) begin
            cnt_sec = 0; // 0부터 번까지 카운트하면 다시 0으로
            cp_min = ~cp_min;
        end
        else cnt_sec = cnt_sec + 1;
    end // 이렇게 카운트가 짝수일 경우, 위와 같이 코딩하여 1bit 줄일 수 있다.
    
    // 비정규 clock이므로 동기화가 필요하다.
    edge_detector_n edg(.clk(clk), .cp_in(cp_min), .rst(reset_p), .n_edge(clk_min)); /// 안 쓰는 출력은 빼버리면 된다.
    
endmodule










// always문 내에서 edge 잡아서 쓰는 것은 system clk에 동기가 맞춰진 것들만 사용해야 한다.
// 위의 코드도 쓸 수는 있지만, 약간의 pdt가 존재하기 때문에 그리 좋지는 않다.


// Cora board sys clock : 125MHz
// 1 clock 당, 8ns

// Micro sec clock
module clock_usec(
    input clk, reset_p,
    output clk_usec
    );
    
    // 125개 카운트하면 1us
    reg [6:0] cnt_8nsec;
    wire cp_usec; // cp : clock pulse
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_8nsec <= 0; // reset이 들어오면 cnt = 0
        else if (cnt_8nsec >= 124) cnt_8nsec = 0; // 0부터 124번까지 카운트하면 다시 0으로
        else cnt_8nsec <= cnt_8nsec + 1;
    end
    
    assign cp_usec = cnt_8nsec < 63 ? 0 : 1; // 0~62 : 0, 63~124 : 1 
    
    // 비정규 clock이므로 동기화가 필요하다.
    edge_detector_n edg(.clk(clk), .cp_in(cp_usec), .rst(reset_p), .n_edge(clk_usec)); /// 안 쓰는 출력은 빼버리면 된다.
endmodule


// Mili sec clock
module clock_msec(
    input clk, clk_usec, reset_p,
    output clk_msec
    );

    // 1000개 카운트하면 1ms
    reg [8:0] cnt_usec;
    reg cp_msec; // cp : clock pulse
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_usec <= 0; // reset이 들어오면 cnt = 0
        else if(clk_usec) begin
            if (cnt_usec >= 499) begin
                cnt_usec <= 0; // 0부터 499번까지 카운트하면 다시 0으로
                cp_msec <= ~cp_msec;
            end
            else cnt_usec <= cnt_usec + 1;
        end

    end // 이렇게 카운트가 짝수일 경우, 위와 같이 코딩하여 1bit 줄일 수 있다.
    
    // 비정규 clock이므로 동기화가 필요하다.
    edge_detector_n edg(.clk(clk), .cp_in(cp_msec), .rst(reset_p), .n_edge(clk_msec)); /// 안 쓰는 출력은 빼버리면 된다.
    
endmodule



// sec clock
module clock_sec(
    input clk, clk_msec, reset_p,
    output clk_sec
    );

    // 1000개 카운트하면 1s
    reg [8:0] cnt_msec;
    reg cp_sec; // cp : clock pulse
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_msec <= 0; // reset이 들어오면 cnt = 0
        else if(clk_msec) begin 
            if (cnt_msec >= 499) begin
                cnt_msec <= 0; // 0부터 499번까지 카운트하면 다시 0으로
                cp_sec <= ~cp_sec; // clock pulse 반전
            end
            else cnt_msec <= cnt_msec + 1;
        end
    end // 이렇게 카운트가 짝수일 경우, 위와 같이 코딩하여 1bit 줄일 수 있다.
    
    // 비정규 clock이므로 동기화가 필요하다.
    edge_detector_n edg(.clk(clk), .cp_in(cp_sec), .rst(reset_p), .n_edge(clk_sec)); /// 안 쓰는 출력은 빼버리면 된다.
    
endmodule



// min clock
module clock_min(
    input clk, clk_sec, reset_p,
    output clk_min
    );

    // 60개 카운트하면 1s
    reg [5:0] cnt_sec;
    reg cp_min; // cp : clock pulse
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_sec <= 0; // reset이 들어오면 cnt = 0
        else if(clk_sec) begin
            if (cnt_sec >= 29) begin
                cnt_sec <= 0; // 0부터 번까지 카운트하면 다시 0으로
                cp_min <= ~cp_min;
            end
            else cnt_sec <= cnt_sec + 1;
        end
    end // 이렇게 카운트가 짝수일 경우, 위와 같이 코딩하여 1bit 줄일 수 있다.
    
    // 비정규 clock이므로 동기화가 필요하다.
    edge_detector_n edg(.clk(clk), .cp_in(cp_min), .rst(reset_p), .n_edge(clk_min)); /// 안 쓰는 출력은 빼버리면 된다.
    
endmodule


// 60bit 카운터(0~59가지 카운트)
module counter_dec_60(
    input clk, reset_p,
    input clk_time,
    output reg [3:0] dec1, dec10 // 1의자리, 10의자리 각각 2 bit씩 따로 출력
    );
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) begin
            dec1 = 0;
            dec10 = 0;
        end
        else if(clk_time) begin
            if(dec1 >= 9) begin 
                dec1 <= 0;
                if(dec10 >= 5) dec10 = 0;
                else dec10 <= dec10 + 1;
            end
            else dec1 <= dec1 + 1;
        end
    end
endmodule