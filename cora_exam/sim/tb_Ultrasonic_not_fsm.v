`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/15 11:49:32
// Design Name: 
// Module Name: tb_Ultrasonic_not_fsm
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


module tb_Ultrasonic_not_fsm();

    reg clk, rst;
    reg echo;
    wire trig;
    wire [15:0] distance;
    wire [7:0] LED_bar;

    Ultrasonic_not_fsm DUT(clk, rst, echo, trig, distance, LED_bar);
    
    initial begin
        clk = 0;
        rst = 1;
        echo = 0;
    end
    
    always #4 clk = ~clk; // 8nsÂ¥¸® clk
    
    initial begin
        #8;
        rst = 0; #8;
        
        for(integer i = 0 ; i < 15 ; i = i+1) begin
        #50;
        wait(trig);
        wait(!trig);
        
//        #22000;
        
        #30000;
        echo = 1; #831560;
        echo = 0;
        #100;
        $display("distance : %d", DUT.distance);
        #30000;
        end
        
                #50;
        wait(trig);
        wait(!trig);
        
//        #22000;
        
        #30000;
        echo = 1; #831560;
        echo = 0;
        #100;
//        $display("distance : %d", DUT.distance);
        #30000;

        #50;
        wait(trig);
        wait(!trig);
        
//        #22000;
        
        #30000;
        echo = 1; #831560;
        echo = 0;
        #100;
//        $display("distance : %d", DUT.distance);
        #30000;
        
        $stop;
    end

endmodule
