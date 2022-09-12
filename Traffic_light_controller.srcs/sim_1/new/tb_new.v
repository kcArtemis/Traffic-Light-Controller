`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2022 11:35:02
// Design Name: 
// Module Name: tb_new
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


module tb_new();
reg clk,rst;
wire [1:0]n_light,s_light,e_light,w_light;
//reg co;
TrafficLightController TLC(clk,rst,n_light,s_light,e_light,w_light);


initial
 begin
  clk=1'b1;
  forever #1 clk=~clk;
 end
initial
 begin
  clk=1'b1;
  forever #1 clk=~clk;
 end
 
initial
 begin
  rst=1'b1;
  #10;
  rst=1'b0;
  #1000;
  $stop;
 end

endmodule
