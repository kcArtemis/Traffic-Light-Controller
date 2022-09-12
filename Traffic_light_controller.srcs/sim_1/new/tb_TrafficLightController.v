`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2022 04:01:22
// Design Name: 
// Module Name: tb_TrafficLightController
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


module tb_TrafficLightController;

reg clk,rst;
wire [2:0]light_M1,light_MT,light_M2,light_S;

TrafficLightController TLC(clk,rst,light_M1,light_MT,light_M2,light_S);

initial
begin
    clk = 1'b0;#10;

end
    always #10 clk = ~clk ;
initial

begin
    rst = 0;
    #100;
    rst = 1;
    #100;  
    rst = 0;
    #(100*200);
    $finish;
end

endmodule
