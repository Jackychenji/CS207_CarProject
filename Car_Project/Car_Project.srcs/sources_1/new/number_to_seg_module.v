`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/22 10:12:12
// Design Name: 
// Module Name: number_to_seg_module
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


module number_to_seg_module (
    input [3:0] number,  // 4 bits number data
    output reg [7:0] seg_out  // Outputs of 4 lights
);
  always @(number) begin
    case (number)
      4'h0: seg_out    = 8'b1111_1100; //0
      4'h1: seg_out    = 8'b0110_0000; //1
      4'h2: seg_out    = 8'b1101_1010; //2
      4'h3: seg_out    = 8'b1111_0010; //3
      4'h4: seg_out    = 8'b0110_0110; //4
      4'h5: seg_out    = 8'b1011_0110; //5
      4'h6: seg_out    = 8'b1011_1110; //6
      4'h7: seg_out    = 8'b1110_0000; //7
      4'h8: seg_out    = 8'b1111_1110; //8
      4'h9: seg_out    = 8'b1110_0110; //9
      4'ha: seg_out    = 8'b1110_1110; //A
      4'hb: seg_out    = 8'b0011_1110; //B
      4'hc: seg_out    = 8'b1001_1100; //C
      4'hd: seg_out    = 8'b0111_1010; //D
      4'he: seg_out    = 8'b1001_1110; //E
      4'hf: seg_out    = 8'b1000_1110; //F
      default: seg_out = 8'b0000_0001;
    endcase
  end
endmodule