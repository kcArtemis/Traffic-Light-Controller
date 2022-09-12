
module traffic_light_controller_v3(clk,rst,n_light,s_light,e_light,w_light,updated_clk,led);
input clk,rst;
output reg [2:0]n_light,s_light,e_light,w_light;
reg [2:0] state;
output [6:0]led;
reg [27:0]cnt=0;
   parameter [2:0] S1=1;
   parameter [2:0] S2=2;
   parameter [2:0] S3=3;
   parameter [2:0] S4=4;
   parameter [2:0] S5=5;
   parameter [2:0] S6=6;
   parameter [2:0] S7=7;
   parameter [2:0] S8=8;
reg [4:0] count;
output reg updated_clk;
always@(posedge clk)
 begin
  cnt=cnt+1;
  updated_clk=cnt[27];
  end
always @(posedge updated_clk , posedge rst)
    begin
        if (rst == 1)
            begin
                state<=S1;
                count <= 0;
            end
        else 
              case (state)
                S1 :if(count<5)
                       begin
                           state<=S1;
                           count<=count+1;
                        
                           
                         end
                       else
                         begin
                           state<=S2;
                           count<=0;
                           end
                S2 :if(count<5)
                         begin
                           state<=S2;
                           count<=count+1;
                           end
                       else
                         begin
                           state<=S3;
                           count<=0;
                           end
                S3 :if(count<5)
                         begin
                           state<=S3;
                           count<=count+1;
                           end
                       else
                         begin
                           state<=S4;
                           count<=0;
                           end
                S4 :if(count<5)
                         begin
                           state<=S4;
                           count<=count+1;
                           
                           end
                       else
                         begin
                           state<=S5;
                           count<=0;
                           end
                S5 :if(count<5)
                         begin
                           state<=S5;
                           count<=count+1;
                           end
                       else
                         begin
                           state<=S6;
                           count<=0;
                           end
                S6 :if(count<5)
                         begin
                           state<=S6;
                           count<=count+1;
                           
                           end
                       else
                         begin
                           state<=S7;
                           count<=0;
                           end
                S7 :if(count<5)
                         begin
                           state<=S7;
                           count<=count+1;
                           end
                       else
                         begin
                           state<=S8;
                           count<=0;
                           end
                S8 :if(count<5)
                         begin
                           state<=S8;
                           count<=count+1;
                           
                           end
                       else
                         begin
                           state<=S1;
                           count<=0;
                           end
                endcase
                
                   
  end
  always@(state)
    begin
      case(state)
       
        S1:begin 
                    n_light<=3'b001;
                    s_light<=3'b100;
                    e_light<=3'b100;
                    w_light<=3'b100;
                    end
             
         S2:begin 
                    n_light<=3'b010;
                    s_light<=3'b100;
                    e_light<=3'b100;
                    w_light<=3'b100;
                    end
         S3:begin 
                    n_light<=3'b100;
                    s_light<=3'b001;
                    e_light<=3'b100;
                    w_light<=3'b100;
                    end
         S4:begin 
                    n_light<=3'b100;
                    s_light<=3'b010;
                    e_light<=3'b100;
                    w_light<=3'b100;
                    end
         S5:begin 
                    n_light<=3'b100;
                    s_light<=3'b100;
                    e_light<=3'b001;
                    w_light<=3'b100;
                    end
         S6:begin 
                    n_light<=3'b100;
                    s_light<=3'b100;
                    e_light<=3'b010;
                    w_light<=3'b100;
                    end
         S7:begin 
                    n_light<=3'b100;
                    s_light<=3'b100;
                    e_light<=3'b100;
                    w_light<=3'b001;
                    end
         S8:begin 
                    n_light<=3'b100;
                    s_light<=3'b100;
                    e_light<=3'b100;
                    w_light<=3'b010;
                    end
              
              
               
//        east: begin
                                  
//                n_light=2'b10;
//                s_light=2'b10;
//                e_light=2'b01;
//                w_light=2'b10;
//                end
//        south:
//                begin
//                n_light=2'b10;
//                s_light=2'b01;
//                e_light=2'b10;
//                w_light=2'b10;
//                end
//        west: 
//                begin
                
//                n_light=2'b10;
//                s_light=2'b10;
//                e_light=2'b10;
//                w_light=2'b01;
//                end
          
        endcase
     end
//  bcd_7_segment b7(count,led);   
endmodule

//module bcd_7_segment(bcd,led);
//input [3:0] bcd;
//output [6:0] led;
//reg [6:0] led;

//always @(bcd)
//    begin
//        case (bcd) //case statement
//            0 : led  = 7'b1000000;
//            1 : led = 7'b1111001;
//            2 : led = 7'b0100100;
//            3 : led = 7'b0110000;
//            4 : led = 7'b0011001;
//            5 : led = 7'b0010010;
//            6 : led = 7'b0000010;
//            7 : led = 7'b1111000;
//            8 : led = 7'b0000000;
//            9 : led = 7'b0010000;
//            default : led = 7'b0111111;

//            //switch off 7 segment character when the bcd digit is not a decimal number.
//                    endcase
//    end
//endmodule