`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:20 11/20/2017 
// Design Name: 
// Module Name:    cache_main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module D_ff (input clk, input reset, input regWrite, input select, input d, output reg q);
	always @ ( negedge clk )
	begin
	if ( reset == 1'b1 )
		q = 0;
	else
		if ( regWrite == 1'b1 && select == 1'b1 ) begin q=d; end
	end
endmodule

module D_ff_d (input clk, input reset, input regWrite, input tbwrite, input decOut1b, input Hit, input d, input init, output reg q);
	always @ ( negedge clk )
	begin
	if ( reset == 1'b1 )
		q = 0;
	else
		if ( Hit == 1'b0 ) 
		  begin
			 if ( regWrite == 1'b1 && tbwrite == 1'b1 ) begin q = init; end
			end
		else 
		  begin
			 if ( regWrite == 1'b1 && decOut1b == 1'b1 ) begin q=d; end
			end
	end
endmodule

module mux16to1_1bit (input outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	 begin
	   case ( Sel )
				4'b0000: outBus=outR0;
				4'b0001: outBus=outR1;
				4'b0010: outBus=outR2;
				4'b0011: outBus=outR3;
				4'b0100: outBus=outR4;
				4'b0101: outBus=outR5;
				4'b0110: outBus=outR6;
				4'b0111: outBus=outR7;
				4'b1000: outBus=outR8;
				4'b1001: outBus=outR9;
				4'b1010: outBus=outR10;
				4'b1011: outBus=outR11;
				4'b1100: outBus=outR12;
				4'b1101: outBus=outR13;
				4'b1110: outBus=outR14;
				4'b1111: outBus=outR15;
	   endcase
	 end
endmodule

module mux16to1_2bit (input[1:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg[1:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	 begin
	   case ( Sel )
				4'b0000: outBus=outR0;
				4'b0001: outBus=outR1;
				4'b0010: outBus=outR2;
				4'b0011: outBus=outR3;
				4'b0100: outBus=outR4;
				4'b0101: outBus=outR5;
				4'b0110: outBus=outR6;
				4'b0111: outBus=outR7;
				4'b1000: outBus=outR8;
				4'b1001: outBus=outR9;
				4'b1010: outBus=outR10;
				4'b1011: outBus=outR11;
				4'b1100: outBus=outR12;
				4'b1101: outBus=outR13;
				4'b1110: outBus=outR14;
				4'b1111: outBus=outR15;
	   endcase
	 end
endmodule

module mux16to1_4bit (input [3:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [3:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	 begin
	   case ( Sel )
				4'b0000: outBus=outR0;
				4'b0001: outBus=outR1;
				4'b0010: outBus=outR2;
				4'b0011: outBus=outR3;
				4'b0100: outBus=outR4;
				4'b0101: outBus=outR5;
				4'b0110: outBus=outR6;
				4'b0111: outBus=outR7;
				4'b1000: outBus=outR8;
				4'b1001: outBus=outR9;
				4'b1010: outBus=outR10;
				4'b1011: outBus=outR11;
				4'b1100: outBus=outR12;
				4'b1101: outBus=outR13;
				4'b1110: outBus=outR14;
				4'b1111: outBus=outR15;
	   endcase
	 end
endmodule

module mux16to1_8bit (input [7:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [7:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	 begin
	   case ( Sel )
				4'b0000: outBus=outR0;
				4'b0001: outBus=outR1;
				4'b0010: outBus=outR2;
				4'b0011: outBus=outR3;
				4'b0100: outBus=outR4;
				4'b0101: outBus=outR5;
				4'b0110: outBus=outR6;
				4'b0111: outBus=outR7;
				4'b1000: outBus=outR8;
				4'b1001: outBus=outR9;
				4'b1010: outBus=outR10;
				4'b1011: outBus=outR11;
				4'b1100: outBus=outR12;
				4'b1101: outBus=outR13;
				4'b1110: outBus=outR14;
				4'b1111: outBus=outR15;
	   endcase
	 end
endmodule

module mux16to1_20bit (input [19:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [19:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	 begin
	   case ( Sel )
				4'b0000: outBus=outR0;
				4'b0001: outBus=outR1;
				4'b0010: outBus=outR2;
				4'b0011: outBus=outR3;
				4'b0100: outBus=outR4;
				4'b0101: outBus=outR5;
				4'b0110: outBus=outR6;
				4'b0111: outBus=outR7;
				4'b1000: outBus=outR8;
				4'b1001: outBus=outR9;
				4'b1010: outBus=outR10;
				4'b1011: outBus=outR11;
				4'b1100: outBus=outR12;
				4'b1101: outBus=outR13;
				4'b1110: outBus=outR14;
				4'b1111: outBus=outR15;
	   endcase
	 end
endmodule

module mux16to1_24bit (input [23:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [23:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	 begin
	   case ( Sel )
				4'b0000: outBus=outR0;
				4'b0001: outBus=outR1;
				4'b0010: outBus=outR2;
				4'b0011: outBus=outR3;
				4'b0100: outBus=outR4;
				4'b0101: outBus=outR5;
				4'b0110: outBus=outR6;
				4'b0111: outBus=outR7;
				4'b1000: outBus=outR8;
				4'b1001: outBus=outR9;
				4'b1010: outBus=outR10;
				4'b1011: outBus=outR11;
				4'b1100: outBus=outR12;
				4'b1101: outBus=outR13;
				4'b1110: outBus=outR14;
				4'b1111: outBus=outR15;
	   endcase
	 end
endmodule

module mux16to1_128bit (input [127:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [127:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	 begin
	   case ( Sel )
				4'b0000: outBus=outR0;
				4'b0001: outBus=outR1;
				4'b0010: outBus=outR2;
				4'b0011: outBus=outR3;
				4'b0100: outBus=outR4;
				4'b0101: outBus=outR5;
				4'b0110: outBus=outR6;
				4'b0111: outBus=outR7;
				4'b1000: outBus=outR8;
				4'b1001: outBus=outR9;
				4'b1010: outBus=outR10;
				4'b1011: outBus=outR11;
				4'b1100: outBus=outR12;
				4'b1101: outBus=outR13;
				4'b1110: outBus=outR14;
				4'b1111: outBus=outR15;
	   endcase
	 end
endmodule


module decoder4x16 (input [3:0] decIn, output reg [15:0] decOut);
	always @ ( decIn )
	 begin
	   case ( decIn )
			4'b0000: decOut=16'b0000000000000001; 
			4'b0001: decOut=16'b0000000000000010;
			4'b0010: decOut=16'b0000000000000100;
			4'b0011: decOut=16'b0000000000001000;
			4'b0100: decOut=16'b0000000000010000;
			4'b0101: decOut=16'b0000000000100000;
			4'b0110: decOut=16'b0000000001000000;
			4'b0111: decOut=16'b0000000010000000;
			4'b1000: decOut=16'b0000000100000000; 
			4'b1001: decOut=16'b0000001000000000;
			4'b1010: decOut=16'b0000010000000000;
			4'b1011: decOut=16'b0000100000000000;
			4'b1100: decOut=16'b0001000000000000;
			4'b1101: decOut=16'b0010000000000000;
			4'b1110: decOut=16'b0100000000000000;
			4'b1111: decOut=16'b1000000000000000;
	   endcase
	 end
endmodule


module encoder (input s0, input s1, input s2, input s3, output reg [1:0] encOut, output reg Hit );
  always @ ( s0 or s1 or s2 or s3 )
  begin
    if ( {s0, s1, s2, s3} == 4'b1000 )
      begin
        encOut = 2'b00;
        Hit = 1'b1;
      end
    else if ( {s0, s1, s2, s3} == 4'b0100 )
      begin
        encOut = 2'b01;
        Hit = 1'b1;
      end
	else if ( {s0, s1, s2, s3} == 4'b0010 )
      begin
        encOut = 2'b10;
        Hit = 1'b1;
      end	
   else if ( {s0, s1, s2, s3} == 4'b0001 )
      begin
        encOut = 2'b11;
        Hit = 1'b1;
      end
    else
      begin
        Hit = 1'b0;
      end
  end
endmodule

module mux2to1_1bit(input in1, input in2, input sel, output reg muxOut );
  always @ ( in1 or in2 or sel )
  begin
    case ( sel )
      1'b0: muxOut = in1;
      1'b1: muxOut = in2;
    endcase
  end
endmodule

module mux2to1_2bit(input [1:0] in1, input [1:0] in2, input sel, output reg [1:0] muxOut );
  always @ ( in1 or in2 or sel )
  begin
    case ( sel )
      1'b0: muxOut = in1;
      1'b1: muxOut = in2;
    endcase
  end
endmodule

module mux4to1_1bit (input outR0,outR1,outR2,outR3, input [1:0] Sel, output reg outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or Sel)
	 begin
	   case ( Sel )
				4'b00: outBus=outR0;
				4'b01: outBus=outR1;
				4'b10: outBus=outR2;
				4'b11: outBus=outR3;
	   endcase
	 end
endmodule

module mux4to1_2bit (input[1:0] in0, in1,in2, in3, input[1:0] sel, output reg[1:0] out);
	always@(in0,in1,sel)
	begin
		case(sel)
			2'd0: out = in0;
			2'd1: out = in1;
			2'd2: out = in2;
			2'd3: out = in3;
		endcase
	end
endmodule

module mux4to1_4bit (input [3:0] outR0,outR1,outR2,outR3, input [1:0] Sel, output reg [3:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or Sel)
	 begin
	   case ( Sel )
				4'b00: outBus=outR0;
				4'b01: outBus=outR1;
				4'b10: outBus=outR2;
				4'b11: outBus=outR3;
	   endcase
	 end
endmodule

module mux4to1_8bit (input [7:0] outR0,outR1,outR2,outR3, input [1:0] Sel, output reg [7:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or Sel)
	 begin
	   case ( Sel )
				4'b00: outBus=outR0;
				4'b01: outBus=outR1;
				4'b10: outBus=outR2;
				4'b11: outBus=outR3;
	   endcase
	 end
endmodule

module mux4to1_20bit (input [19:0] outR0,outR1,outR2,outR3, input [1:0] Sel, output reg [19:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or Sel)
	 begin
	   case ( Sel )
				4'b00: outBus=outR0;
				4'b01: outBus=outR1;
				4'b10: outBus=outR2;
				4'b11: outBus=outR3;
	   endcase
	 end
endmodule

module mux4to1_16byte (input [127:0] outR0,outR1,outR2,outR3, input [1:0] Sel, output reg [127:0] outBus );
	always @ ( outR0 or outR1 or outR2 or outR3 or Sel)
	 begin
	   case ( Sel )
				4'b00: outBus=outR0;
				4'b01: outBus=outR1;
				4'b10: outBus=outR2;
				4'b11: outBus=outR3;
	   endcase
	 end
endmodule


module register1bit (input clk, input reset, input regWrite, input decOut1b, input writeData, output outR);
  D_ff d0 ( clk, reset, regWrite, decOut1b, writeData, outR );
endmodule

module register2bit (input clk, input reset, input regWrite, input decOut1b, input [1:0] writeData, output [1:0] outR);
  D_ff d0 ( clk, reset, regWrite, decOut1b, writeData[0], outR[0] );
  D_ff d1 ( clk, reset, regWrite, decOut1b, writeData[1], outR[1] );
endmodule

module register4bit (input clk, input reset, input regWrite, input decOut1b, input [3:0] writeData, output [3:0] outR);
  D_ff d0 ( clk, reset, regWrite, decOut1b, writeData[0], outR[0] );
  D_ff d1 ( clk, reset, regWrite, decOut1b, writeData[1], outR[1] );
  D_ff d2 ( clk, reset, regWrite, decOut1b, writeData[2], outR[2] );
  D_ff d3 ( clk, reset, regWrite, decOut1b, writeData[3], outR[3] );
endmodule

module register3bit (input clk, input reset, input regWrite, input decOut1b, input [2:0] writeData, output [2:0] outR);
  D_ff d0 ( clk, reset, regWrite, decOut1b, writeData[0], outR[0] );
  D_ff d1 ( clk, reset, regWrite, decOut1b, writeData[1], outR[1] );
  D_ff d2 ( clk, reset, regWrite, decOut1b, writeData[2], outR[2] );
endmodule


module register20bit (input clk, input reset, input regWrite, input decOut1b, input [19:0] writeData, output [19:0] outR);
  D_ff d0  ( clk, reset, regWrite, decOut1b, writeData[0],  outR[0] );
  D_ff d1  ( clk, reset, regWrite, decOut1b, writeData[1],  outR[1] );
  D_ff d2  ( clk, reset, regWrite, decOut1b, writeData[2],  outR[2] );
  D_ff d3  ( clk, reset, regWrite, decOut1b, writeData[3],  outR[3] );
  D_ff d4  ( clk, reset, regWrite, decOut1b, writeData[4],  outR[4] );
  D_ff d5  ( clk, reset, regWrite, decOut1b, writeData[5],  outR[5] );
  D_ff d6  ( clk, reset, regWrite, decOut1b, writeData[6],  outR[6] );
  D_ff d7  ( clk, reset, regWrite, decOut1b, writeData[7],  outR[7] );
  D_ff d8  ( clk, reset, regWrite, decOut1b, writeData[8],  outR[8] );
  D_ff d9  ( clk, reset, regWrite, decOut1b, writeData[9],  outR[9] );
  D_ff d10 ( clk, reset, regWrite, decOut1b, writeData[10], outR[10] );
  D_ff d11 ( clk, reset, regWrite, decOut1b, writeData[11], outR[11] );
  D_ff d12 ( clk, reset, regWrite, decOut1b, writeData[12], outR[12] );
  D_ff d13 ( clk, reset, regWrite, decOut1b, writeData[13], outR[13] );
  D_ff d14 ( clk, reset, regWrite, decOut1b, writeData[14], outR[14] );
  D_ff d15 ( clk, reset, regWrite, decOut1b, writeData[15], outR[15] );
  D_ff d16 ( clk, reset, regWrite, decOut1b, writeData[16], outR[16] );
  D_ff d17 ( clk, reset, regWrite, decOut1b, writeData[17], outR[17] );
  D_ff d18 ( clk, reset, regWrite, decOut1b, writeData[18], outR[18] );
  D_ff d19 ( clk, reset, regWrite, decOut1b, writeData[19], outR[19] );
endmodule

module Byte (input clk, input reset, input regWrite, input tbwrite, input decOut1b, input hit, input [7:0] writeData, input [7:0] missData, output [7:0] outR);
  
  D_ff_d d0 ( clk, reset, regWrite, tbwrite, decOut1b, hit, writeData[0], missData[0], outR[0] );
  D_ff_d d1 ( clk, reset, regWrite, tbwrite, decOut1b, hit, writeData[1], missData[1], outR[1] );
  D_ff_d d2 ( clk, reset, regWrite, tbwrite, decOut1b, hit, writeData[2], missData[2], outR[2] );
  D_ff_d d3 ( clk, reset, regWrite, tbwrite, decOut1b, hit, writeData[3], missData[3], outR[3] );
  D_ff_d d4 ( clk, reset, regWrite, tbwrite, decOut1b, hit, writeData[4], missData[4], outR[4] );
  D_ff_d d5 ( clk, reset, regWrite, tbwrite, decOut1b, hit, writeData[5], missData[5], outR[5] );
  D_ff_d d6 ( clk, reset, regWrite, tbwrite, decOut1b, hit, writeData[6], missData[6], outR[6] );
  D_ff_d d7 ( clk, reset, regWrite, tbwrite, decOut1b, hit, writeData[7], missData[7], outR[7] );

endmodule

module Block (input clk, input reset, input dataWrite, input [3:0] selOffset, input tbwrite, input [15:0] offset, input hit, input [7:0] writeData, input [127:0] missData, output [127:0] outD, output [7:0] outByte);
	Byte b0  ( clk, reset, dataWrite, tbwrite,  offset[0], hit, writeData, missData[7:0],     outD[7:0]);
	Byte b1  ( clk, reset, dataWrite, tbwrite,  offset[1], hit, writeData, missData[15:8],    outD[15:8]);
	Byte b2  ( clk, reset, dataWrite, tbwrite,  offset[2], hit, writeData, missData[23:16],   outD[23:16]);
	Byte b3  ( clk, reset, dataWrite, tbwrite,  offset[3], hit, writeData, missData[31:24],   outD[31:24]);
	Byte b4  ( clk, reset, dataWrite, tbwrite,  offset[4], hit, writeData, missData[39:32],   outD[39:32]);
	Byte b5  ( clk, reset, dataWrite, tbwrite,  offset[5], hit, writeData, missData[47:40],   outD[47:40]);
	Byte b6  ( clk, reset, dataWrite, tbwrite,  offset[6], hit, writeData, missData[55:48],   outD[55:48]);
	Byte b7  ( clk, reset, dataWrite, tbwrite,  offset[7], hit, writeData, missData[63:56],   outD[63:56]);
	Byte b8  ( clk, reset, dataWrite, tbwrite,  offset[8], hit, writeData, missData[71:64],   outD[71:64]);
	Byte b9  ( clk, reset, dataWrite, tbwrite,  offset[9], hit, writeData, missData[79:72],   outD[79:72]);
	Byte b10 ( clk, reset, dataWrite, tbwrite,  offset[10], hit, writeData, missData[87:80],   outD[87:80]);
	Byte b11 ( clk, reset, dataWrite, tbwrite,  offset[11], hit, writeData, missData[95:88],   outD[95:88]);
	Byte b12 ( clk, reset, dataWrite, tbwrite,  offset[12], hit, writeData, missData[103:96],  outD[103:96]);
	Byte b13 ( clk, reset, dataWrite, tbwrite,  offset[13], hit, writeData, missData[111:104], outD[111:104]);
	Byte b14 ( clk, reset, dataWrite, tbwrite,  offset[14], hit, writeData, missData[119:112], outD[119:112]);
	Byte b15 ( clk, reset, dataWrite, tbwrite,  offset[15], hit, writeData, missData[127:120], outD[127:120]);
	
	mux16to1_8bit data32mux ( outD[7:0], outD[15:8], outD[23:16], outD[31:24], outD[39:32], outD[47:40], outD[55:48], outD[63:56], outD[71:64], outD[79:72], outD[87:80], outD[95:88], outD[103:96], outD[111:104], outD[119:112], outD[127:120],selOffset,outByte);
	
endmodule


module set (input clk, input reset, input [3:0] mainTagWrite, input [3:0] enWrite, input [3:0] validWrite, 
				input [3:0] dirtyWrite, input [3:0] dirtyIn, input hit, input [1:0] select,
				input index, input [3:0] addOffset, input [15:0] offset, input [19:0] AddressTag, 
				input [7:0] writeData, input [127:0] missData,
				output [19:0] mainTagOut0, mainTagOut1, mainTagOut2, mainTagOut3, maintagdb,
				output [127:0] outD0, outD1, outD2, outD3, outdb,
				output [7:0] outB0, outB1, outB2, outB3, outbdb,
				output validOut0, validOut1, validOut2, validOut3, validdb,
				output dirtyOut0, dirtyOut1, dirtyOut2, dirtyOut3, dirtyOutdb);

	register20bit rmt0  ( clk, reset, mainTagWrite[0], index,  AddressTag, mainTagOut0 );
	register20bit rmt1  ( clk, reset, mainTagWrite[1], index,  AddressTag, mainTagOut1 );
	register20bit rmt2  ( clk, reset, mainTagWrite[2], index,  AddressTag, mainTagOut2 );
	register20bit rmt3  ( clk, reset, mainTagWrite[3], index,  AddressTag, mainTagOut3 );

	mux4to1_20bit maintagmux ( mainTagOut0, mainTagOut1, mainTagOut2, mainTagOut3, select, maintagdb);
	
	Block b0  (clk, reset, enWrite[0], addOffset, index, offset,  hit, writeData, missData, outD0,  outB0);
	Block b1  (clk, reset, enWrite[1], addOffset, index, offset,  hit, writeData, missData, outD1,  outB1);
    Block b2  (clk, reset, enWrite[2], addOffset, index, offset,  hit, writeData, missData, outD2,  outB2);
	Block b3  (clk, reset, enWrite[3], addOffset, index, offset,  hit, writeData, missData, outD3,  outB3);
	
	mux4to1_16byte data16bytemux ( outD0, outD1, outD2, outD3, select, outdb );
	mux4to1_8bit data1bytemux ( outB0, outB1, outB2, outB3, select, outbdb );
	
	register1bit valid0  (clk, reset, validWrite[0], index,  1'b1, validOut0);
	register1bit valid1  (clk, reset, validWrite[1], index,  1'b1, validOut1);
	register1bit valid2  (clk, reset, validWrite[2], index,  1'b1, validOut2);
	register1bit valid3  (clk, reset, validWrite[3], index,  1'b1, validOut3);
	
	mux4to1_1bit validmux( validOut0, validOut1, validOut2, validOut3, select, validdb);
  
	register1bit dirty0  (clk, reset, dirtyWrite[0], index,  dirtyIn[0], dirtyOut0);
	register1bit dirty1  (clk, reset, dirtyWrite[1], index,  dirtyIn[1], dirtyOut1);
	register1bit dirty2  (clk, reset, dirtyWrite[2], index,  dirtyIn[2], dirtyOut2);
	register1bit dirty3  (clk, reset, dirtyWrite[3], index,  dirtyIn[3], dirtyOut3);
	
	mux4to1_1bit dirtymux ( dirtyOut0, dirtyOut1, dirtyOut2, dirtyOut3, select, dirtyOutdb);

endmodule

module Halt_Tag_Comparator (input en, input [3:0] in1, input [3:0] in2, output reg outC );
  always @ ( en or in1 or in2 )
  begin
    if ( en == 1'b0 ) 
      outC = 1'b0;
    else
      begin
        if ( in1 == in2 )
          outC = 1'b1;
        else
          outC = 1'b0;
      end
  end
endmodule

module Halt_Tag_Array (input clk, input reset, input haltTagWrite, input [3:0] select, input [15:0] index, input [3:0] haltTagIn,
	output [3:0] haltTagOut0, haltTagOut1, haltTagOut2, haltTagOut3, haltTagOut4, haltTagOut5, haltTagOut6, haltTagOut7, haltTagOut8, haltTagOut9, haltTagOut10, haltTagOut11, haltTagOut12, haltTagOut13, haltTagOut14, haltTagOut15, haltdb);
	
	register4bit rht0  ( clk, reset, haltTagWrite, index[0],  haltTagIn, haltTagOut0 );
	register4bit rht1  ( clk, reset, haltTagWrite, index[1],  haltTagIn, haltTagOut1 );
	register4bit rht2  ( clk, reset, haltTagWrite, index[2],  haltTagIn, haltTagOut2 );
	register4bit rht3  ( clk, reset, haltTagWrite, index[3],  haltTagIn, haltTagOut3 );
	register4bit rht4  ( clk, reset, haltTagWrite, index[4],  haltTagIn, haltTagOut4 );
	register4bit rht5  ( clk, reset, haltTagWrite, index[5],  haltTagIn, haltTagOut5 );
	register4bit rht6  ( clk, reset, haltTagWrite, index[6],  haltTagIn, haltTagOut6 );
	register4bit rht7  ( clk, reset, haltTagWrite, index[7],  haltTagIn, haltTagOut7 );
	register4bit rht8  ( clk, reset, haltTagWrite, index[8],  haltTagIn, haltTagOut8 );
	register4bit rht9  ( clk, reset, haltTagWrite, index[9],  haltTagIn, haltTagOut9 );
	register4bit rht10 ( clk, reset, haltTagWrite, index[10], haltTagIn, haltTagOut10 );
	register4bit rht11 ( clk, reset, haltTagWrite, index[11], haltTagIn, haltTagOut11 );
	register4bit rht12 ( clk, reset, haltTagWrite, index[12], haltTagIn, haltTagOut12 );
	register4bit rht13 ( clk, reset, haltTagWrite, index[13], haltTagIn, haltTagOut13 );
	register4bit rht14 ( clk, reset, haltTagWrite, index[14], haltTagIn, haltTagOut14 );
	register4bit rht15 ( clk, reset, haltTagWrite, index[15], haltTagIn, haltTagOut15 );
	mux16to1_4bit haltmux ( haltTagOut0, haltTagOut1, haltTagOut2, haltTagOut3, haltTagOut4, haltTagOut5, haltTagOut6, haltTagOut7, haltTagOut8, haltTagOut9, haltTagOut10, haltTagOut11, haltTagOut12, haltTagOut13, haltTagOut14, haltTagOut15, select, haltdb );
	
endmodule

module Main_Tag_Comparator (input en, input [19:0] in1, input [19:0] in2, output reg outC );
  always @ ( en or in1 or in2 )
  begin
    if ( en == 1'b0 ) 
      outC = 1'b0;
    else
      begin
        if ( in1 == in2 )
          outC = 1'b1;
        else
          outC = 1'b0;
      end
  end
endmodule

module setCount(input clk, reset, input Hit, input[2:0] count, output reg [2:0] newCount);
	always @ ( negedge clk or reset or Hit)
	begin
		if (reset == 1'b1) begin
			newCount = 3'd0;
		end
		else begin
			newCount = count + 3'd1;
			if (count == 3'd1) begin
                newCount = 3'b000;
			end
		end
	end

endmodule	

module count(input clk, reset, input Hit, output [2:0] count);
	wire [2:0]newCount;
	
	setCount sc(clk,reset,Hit,count, newCount);
	register3bit stallcheck(clk,reset,1'b1, 1'b1, newCount, count);

endmodule


module decrementBy1 (input [1:0] in, output reg [1:0] out);
	always @(in)
	begin
		if(in == 2'd0) begin
			out = 2'd0;
		end
		else begin
			out = in - 2'd1;
		end
	end

endmodule


module lruCounterModule(input clk, reset, en, dec, load, input[1:0] inp,output [1:0]countOut);
		wire[1:0] decValue;
		wire[1:0] writeValue;
		
		decrementBy1 d1(countOut, decValue);
		mux2to1_2bit mcm1(inp, decValue, dec, writeValue);
		
		register2bit c(clk,reset,(load | dec) & en, 1'b1, writeValue, countOut);
endmodule


module priorityEncoder(input [1:0] in0, in1, in2, in3, output reg [1:0] out);
		always@(in0, in1, in2, in3)
		begin
			if(in0 == 2'd0) begin
				out = 2'd0;
			end
			else if(in1 == 2'd0) begin
				out = 2'd1;
			end
			else if(in2 == 2'd0) begin
				out = 2'd2;
			end
			else if(in3 == 2'd0) begin
				out = 2'd3;
			end
			else begin
				out = 2'd0;
			end
		end
endmodule

module decoder2to4(input[1:0] in, output reg [3:0] op);
	always @(in)
	begin
		case(in)
			2'd0: op = 4'd1;
			2'd1: op = 4'd2;
			2'd2: op = 4'd4;
			2'd3: op = 4'd8;
		endcase
	end

endmodule

module comparator_2bits(input [1:0] in0, in1, output reg greater);
	always@(in0, in1)
	begin
		if(in0 > in1) begin
			greater = 1'b1;
		end
		else begin
			greater = 1'b0;
		end
	end
endmodule

module lru(	input clk, input reset, input en, input [1:0] lineIndex, input hit, output [1:0] repWay );
	 
		wire [1:0] counterSel, counterOut0, counterOut1, counterOut2, counterOut3, inp0, inp1, inp2, inp3, selCounter;
		wire [3:0] load, dec, compOut;
		wire [3:0] encIn;
		
		mux2to1_2bit m21(repWay, lineIndex, hit, counterSel);
		
		decoder2to4 d1(counterSel, load);
		
		mux2to1_2bit mc1(counterOut0, 2'b11, hit, inp0);
		mux2to1_2bit mc2(counterOut1, 2'b11, hit, inp1);
		mux2to1_2bit mc3(counterOut2, 2'b11, hit, inp2);
		mux2to1_2bit mc4(counterOut3, 2'b11, hit, inp3);
		and(dec[0], compOut[0], hit);
		and(dec[1], compOut[1], hit);
		and(dec[2], compOut[2], hit);
		and(dec[3], compOut[3], hit);
		
		lruCounterModule c0(clk,reset,en, dec[0],load[0],inp0,counterOut0);
		lruCounterModule c1(clk,reset,en, dec[1],load[1],inp1,counterOut1);
		lruCounterModule c2(clk,reset,en, dec[2],load[2],inp2,counterOut2);
		lruCounterModule c3(clk,reset,en, dec[3],load[3],inp3,counterOut3);
		
		mux4to1_2bit m41(counterOut0, counterOut1, counterOut2, counterOut3, counterSel, selCounter);
		
		comparator_2bits comp0(counterOut0, selCounter, compOut[0]);
		comparator_2bits comp1(counterOut1, selCounter, compOut[1]);
		comparator_2bits comp2(counterOut2, selCounter, compOut[2]);
		comparator_2bits comp3(counterOut3, selCounter, compOut[3]);
		
		priorityEncoder pe(counterOut0,counterOut1, counterOut2, counterOut3, repWay);
endmodule	
	

module cacheControl(input clk, input reset, input memRead, input memWrite, input [1:0] waySelect, input valid, input Hit, input [2:0] count,
  output reg [3:0] tagWrite, validWrite, dirtyWrite, dirtyIn, write);
	
	
	always@( memRead or memWrite or waySelect or Hit or count)
	begin
	if(count != 3'd0 ) begin
		write = 4'd0;
		dirtyWrite = 4'd0;
		dirtyIn = 4'd0; 
		validWrite = 4'd0;
		tagWrite = 4'd0;
	end
	else begin
		case(Hit)
			1'b1: 
				begin
					if(memRead == 1) 
						begin
							write = 4'd0;
							dirtyWrite = 4'd0;
							dirtyIn = 4'd0; 
							validWrite = 4'd0;
							tagWrite = 4'd0;
						end 
						
					else if (memWrite == 1)
						begin
							 case(waySelect)
								  2'd0: begin
										write = 4'd1;
									dirtyWrite = 4'd1;
									dirtyIn = 4'd1; 
									validWrite = 4'd0;
									tagWrite = 4'd0;
								  end
								  2'd1: begin
										write = 4'd2;
									dirtyWrite = 4'd2;
									dirtyIn = 4'd2; 
									validWrite = 4'd0;
									tagWrite = 4'd0;
								  end
								  2'd2: begin
										write = 4'd4;
									dirtyWrite = 4'd4;
									dirtyIn = 4'd4; 
									validWrite = 4'd0;
									tagWrite = 4'd0;
								  end
								  2'd3: begin
										write = 4'd8;
									dirtyWrite = 4'd8;
									dirtyIn = 4'd8; 
									validWrite = 4'd0;
									tagWrite = 4'd0;
								  end
							 endcase		
							end
						else 
							 begin
								write = 4'd0;
								dirtyWrite = 4'd0;
								dirtyIn = 4'd0; 
								validWrite = 4'd0;
								tagWrite = 4'd0;
							end
				end 
			
			1'b0:	
				begin
					if(memRead == 1 || memWrite == 1) 
						begin
							case(waySelect)
								2'd0:
									begin
									write = 4'd1;
									dirtyWrite = 4'd1;
									dirtyIn = 4'd0; 
									validWrite = 4'd1;
									tagWrite = 4'd1;
									end
								2'd1:	
									begin
									write = 4'd2;
									dirtyWrite = 4'd2;
									dirtyIn = 4'd0; 
									validWrite = 4'd2;
									tagWrite = 4'd2;
									end
								2'd2:
									begin	
									write = 4'd4;
									dirtyWrite = 4'd4;
									dirtyIn = 4'd0; 
									validWrite = 4'd4;
									tagWrite = 4'd4;
									end
								2'd3:	
									begin
									write = 4'd8;
									dirtyWrite = 4'd8;
									dirtyIn = 4'd0; 
									validWrite = 4'd8;
									tagWrite = 4'd8;
									end
							endcase
						end
						
						else
							begin
								write = 4'd0;
								dirtyWrite = 4'd0;
								dirtyIn = 4'd0; 
								validWrite = 4'd0;
								tagWrite = 4'd0;							
							end			
				end
		endcase
		end
	end
endmodule


module Cache ( input clk, input reset, input [7:0] byteToWrite, 
	input [127:0] inputBlock, input[31:0] address, input memWrite, input memRead, 
	output hit, output valid, output dirty, output [1:0] waySel, output [23:0] tag_out, 
	output [127:0] replacementBlock, output [7:0] byteDataOutFromCache, 
	output writeBackSignal );
  
  wire [15:0] decindexout;
  decoder4x16 decindex( address[7:4], decindexout );
  
  wire [15:0] decoffsetout;
  decoder4x16 decoffset( address[3:0], decoffsetout );
  
  wire [3:0] tagway;

  wire [3:0] ht1out0, ht1out1, ht1out2, ht1out3, ht1out4, ht1out5, ht1out6, ht1out7, ht1out8, ht1out9, ht1out10, ht1out11, ht1out12, ht1out13, ht1out14, ht1out15, ht1outdb;
  Halt_Tag_Array hta1 ( clk, reset, tagway[0], address[7:4], decindexout, address[11:8], 
    ht1out0, ht1out1, ht1out2, ht1out3, ht1out4, ht1out5, ht1out6, ht1out7, ht1out8, ht1out9, ht1out10, ht1out11, ht1out12, ht1out13, ht1out14, ht1out15, ht1outdb);
  
  wire [3:0] ht2out0, ht2out1, ht2out2, ht2out3, ht2out4, ht2out5, ht2out6, ht2out7, ht2out8, ht2out9, ht2out10, ht2out11, ht2out12, ht2out13, ht2out14, ht2out15, ht2outdb;
  Halt_Tag_Array hta2 ( clk, reset, tagway[1], address[7:4], decindexout, address[11:8],
    ht2out0, ht2out1, ht2out2, ht2out3, ht2out4, ht2out5, ht2out6, ht2out7, ht2out8, ht2out9, ht2out10, ht2out11, ht2out12, ht2out13, ht2out14, ht2out15, ht2outdb);
	 
  wire [3:0] ht3out0, ht3out1, ht3out2, ht3out3, ht3out4, ht3out5, ht3out6, ht3out7, ht3out8, ht3out9, ht3out10, ht3out11, ht3out12, ht3out13, ht3out14, ht3out15, ht3outdb;
  Halt_Tag_Array hta3 ( clk, reset, tagway[2], address[7:4], decindexout, address[11:8], 
    ht3out0, ht3out1, ht3out2, ht3out3, ht3out4, ht3out5, ht3out6, ht3out7, ht3out8, ht3out9, ht3out10, ht3out11, ht3out12, ht3out13, ht3out14, ht3out15, ht3outdb);
  
  
  wire [3:0] ht4out0, ht4out1, ht4out2, ht4out3, ht4out4, ht4out5, ht4out6, ht4out7, ht4out8, ht4out9, ht4out10, ht4out11, ht4out12, ht4out13, ht4out14, ht4out15, ht4outdb;
  Halt_Tag_Array hta4 ( clk, reset, tagway[3], address[7:4], decindexout, address[11:8],
    ht4out0, ht4out1, ht4out2, ht4out3, ht4out4, ht4out5, ht4out6, ht4out7, ht4out8, ht4out9, ht4out10, ht4out11, ht4out12, ht4out13, ht4out14, ht4out15, ht4outdb);
  
   wire out1comp0, out1comp1, out1comp2, out1comp3, out1comp4, out1comp5, out1comp6, out1comp7, out1comp8, out1comp9, out1comp10, out1comp11, out1comp12, out1comp13, out1comp14, out1comp15;
    Halt_Tag_Comparator ch1t0  ( 1'b1, address[11:8], ht1out0,  out1comp0 );
	Halt_Tag_Comparator ch1t1  ( 1'b1, address[11:8], ht1out1,  out1comp1 );
	Halt_Tag_Comparator ch1t2  ( 1'b1, address[11:8], ht1out2,  out1comp2 );
	Halt_Tag_Comparator ch1t3  ( 1'b1, address[11:8], ht1out3,  out1comp3 );
	Halt_Tag_Comparator ch1t4  ( 1'b1, address[11:8], ht1out4,  out1comp4 );
	Halt_Tag_Comparator ch1t5  ( 1'b1, address[11:8], ht1out5,  out1comp5 );
	Halt_Tag_Comparator ch1t6  ( 1'b1, address[11:8], ht1out6,  out1comp6 );
	Halt_Tag_Comparator ch1t7  ( 1'b1, address[11:8], ht1out7,  out1comp7 );
	Halt_Tag_Comparator ch1t8  ( 1'b1, address[11:8], ht1out8,  out1comp8 );
	Halt_Tag_Comparator ch1t9  ( 1'b1, address[11:8], ht1out9,  out1comp9 );
	Halt_Tag_Comparator ch1t10 ( 1'b1, address[11:8], ht1out10, out1comp10 );
	Halt_Tag_Comparator ch1t11 ( 1'b1, address[11:8], ht1out11, out1comp11 );
	Halt_Tag_Comparator ch1t12 ( 1'b1, address[11:8], ht1out12, out1comp12 );
	Halt_Tag_Comparator ch1t13 ( 1'b1, address[11:8], ht1out13, out1comp13 );
	Halt_Tag_Comparator ch1t14 ( 1'b1, address[11:8], ht1out14, out1comp14 );
	Halt_Tag_Comparator ch1t15 ( 1'b1, address[11:8], ht1out15, out1comp15 );
	
	wire out2comp0, out2comp1, out2comp2, out2comp3, out2comp4, out2comp5, out2comp6, out2comp7, out2comp8, out2comp9, out2comp10, out2comp11, out2comp12, out2comp13, out2comp14, out2comp15;
	Halt_Tag_Comparator ch2t0  ( 1'b1, address[11:8], ht2out0,  out2comp0 );
	Halt_Tag_Comparator ch2t1  ( 1'b1, address[11:8], ht2out1,  out2comp1 );
	Halt_Tag_Comparator ch2t2  ( 1'b1, address[11:8], ht2out2,  out2comp2 );
	Halt_Tag_Comparator ch2t3  ( 1'b1, address[11:8], ht2out3,  out2comp3 );
	Halt_Tag_Comparator ch2t4  ( 1'b1, address[11:8], ht2out4,  out2comp4 );
	Halt_Tag_Comparator ch2t5  ( 1'b1, address[11:8], ht2out5,  out2comp5 );
	Halt_Tag_Comparator ch2t6  ( 1'b1, address[11:8], ht2out6,  out2comp6 );
	Halt_Tag_Comparator ch2t7  ( 1'b1, address[11:8], ht2out7,  out2comp7 );
	Halt_Tag_Comparator ch2t8  ( 1'b1, address[11:8], ht2out8,  out2comp8 );
	Halt_Tag_Comparator ch2t9  ( 1'b1, address[11:8], ht2out9,  out2comp9 );
	Halt_Tag_Comparator ch2t10 ( 1'b1, address[11:8], ht2out10, out2comp10 );
	Halt_Tag_Comparator ch2t11 ( 1'b1, address[11:8], ht2out11, out2comp11 );
	Halt_Tag_Comparator ch2t12 ( 1'b1, address[11:8], ht2out12, out2comp12 );
	Halt_Tag_Comparator ch2t13 ( 1'b1, address[11:8], ht2out13, out2comp13 );
	Halt_Tag_Comparator ch2t14 ( 1'b1, address[11:8], ht2out14, out2comp14 );
	Halt_Tag_Comparator ch2t15 ( 1'b1, address[11:8], ht2out15, out2comp15 );
	
	wire out3comp0, out3comp1, out3comp2, out3comp3, out3comp4, out3comp5, out3comp6, out3comp7, out3comp8, out3comp9, out3comp10, out3comp11, out3comp12, out3comp13, out3comp14, out3comp15;
	Halt_Tag_Comparator ch3t0  ( 1'b1, address[11:8], ht3out0,  out3comp0 );
	Halt_Tag_Comparator ch3t1  ( 1'b1, address[11:8], ht3out1,  out3comp1 );
	Halt_Tag_Comparator ch3t2  ( 1'b1, address[11:8], ht3out2,  out3comp2 );
	Halt_Tag_Comparator ch3t3  ( 1'b1, address[11:8], ht3out3,  out3comp3 );
	Halt_Tag_Comparator ch3t4  ( 1'b1, address[11:8], ht3out4,  out3comp4 );
	Halt_Tag_Comparator ch3t5  ( 1'b1, address[11:8], ht3out5,  out3comp5 );
	Halt_Tag_Comparator ch3t6  ( 1'b1, address[11:8], ht3out6,  out3comp6 );
	Halt_Tag_Comparator ch3t7  ( 1'b1, address[11:8], ht3out7,  out3comp7 );
	Halt_Tag_Comparator ch3t8  ( 1'b1, address[11:8], ht3out8,  out3comp8 );
	Halt_Tag_Comparator ch3t9  ( 1'b1, address[11:8], ht3out9,  out3comp9 );
	Halt_Tag_Comparator ch3t10 ( 1'b1, address[11:8], ht3out10, out3comp10 );
	Halt_Tag_Comparator ch3t11 ( 1'b1, address[11:8], ht3out11, out3comp11 );
	Halt_Tag_Comparator ch3t12 ( 1'b1, address[11:8], ht3out12, out3comp12 );
	Halt_Tag_Comparator ch3t13 ( 1'b1, address[11:8], ht3out13, out3comp13 );
	Halt_Tag_Comparator ch3t14 ( 1'b1, address[11:8], ht3out14, out3comp14 );
	Halt_Tag_Comparator ch3t15 ( 1'b1, address[11:8], ht3out15, out3comp15 );
	
	wire out4comp0, out4comp1, out4comp2, out4comp3, out4comp4, out4comp5, out4comp6, out4comp7, out4comp8, out4comp9, out4comp10, out4comp11, out4comp12, out4comp13, out4comp14, out4comp15;
	Halt_Tag_Comparator ch4t0  ( 1'b1, address[11:8], ht4out0,  out4comp0 );
	Halt_Tag_Comparator ch4t1  ( 1'b1, address[11:8], ht4out1,  out4comp1 );
	Halt_Tag_Comparator ch4t2  ( 1'b1, address[11:8], ht4out2,  out4comp2 );
	Halt_Tag_Comparator ch4t3  ( 1'b1, address[11:8], ht4out3,  out4comp3 );
	Halt_Tag_Comparator ch4t4  ( 1'b1, address[11:8], ht4out4,  out4comp4 );
	Halt_Tag_Comparator ch4t5  ( 1'b1, address[11:8], ht4out5,  out4comp5 );
	Halt_Tag_Comparator ch4t6  ( 1'b1, address[11:8], ht4out6,  out4comp6 );
	Halt_Tag_Comparator ch4t7  ( 1'b1, address[11:8], ht4out7,  out4comp7 );
	Halt_Tag_Comparator ch4t8  ( 1'b1, address[11:8], ht4out8,  out4comp8 );
	Halt_Tag_Comparator ch4t9  ( 1'b1, address[11:8], ht4out9,  out4comp9 );
	Halt_Tag_Comparator ch4t10 ( 1'b1, address[11:8], ht4out10, out4comp10 );
	Halt_Tag_Comparator ch4t11 ( 1'b1, address[11:8], ht4out11, out4comp11 );
	Halt_Tag_Comparator ch4t12 ( 1'b1, address[11:8], ht4out12, out4comp12 );
	Halt_Tag_Comparator ch4t13 ( 1'b1, address[11:8], ht4out13, out4comp13 );
	Halt_Tag_Comparator ch4t14 ( 1'b1, address[11:8], ht4out14, out4comp14 );
	Halt_Tag_Comparator ch4t15 ( 1'b1, address[11:8], ht4out15, out4comp15 );
 
  wire outc0, outc1, outc2, outc3, outc4, outc5, outc6, outc7, outc8, outc9, outc10, outc11, outc12, outc13, outc14, outc15, outcb;
  
  wire [1:0] repWay0, repWay1, repWay2, repWay3, repWay4, repWay5, repWay6, repWay7, repWay8, repWay9, repWay10, repWay11, repWay12, repWay13, repWay14, repWay15, repOut;
  
  wire [3:0] dataway, validway, dirtyway, dirtyin;
  
  
  wire [19:0] mt1out0, mt2out0, mt3out0, mt4out0, mt0outdb;
  wire [127:0] out1d0, out2d0, out3d0, out4d0, out0db;
  wire [7:0] out1b0, out2b0, out3b0, out4b0, out0bdb;
  wire v1out0, v2out0, v3out0, v4out0, v0outdb;
  wire d1out0, d2out0, d3out0, d4out0, d0outdb;
  set set0( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[0], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out0, mt2out0, mt3out0, mt4out0, mt0outdb,
    out1d0, out2d0, out3d0, out4d0, out0db,
    out1b0, out2b0, out3b0, out4b0, out0bdb,
    v1out0, v2out0, v3out0, v4out0, v0outdb,
    d1out0, d2out0, d3out0, d4out0, d0outdb);

   lru l0(clk, reset,decindexout[0], waySel, hit, repWay0);
    

  
  wire [19:0] mt1out1, mt2out1, mt3out1, mt4out1, mt1outdb;
  wire [127:0] out1d1, out2d1, out3d1, out4d1, out1db;
  wire [7:0] out1b1, out2b1, out3b1, out4b1, out1bdb;
  wire v1out1, v2out1, v3out1, v4out1, v1outdb;
  wire d1out1, d2out1, d3out1, d4out1, d1outdb;
  set set1( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[1], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out1, mt2out1, mt3out1, mt4out1, mt1outdb,
    out1d1, out2d1, out3d1, out4d1, out1db,
    out1b1, out2b1, out3b1, out4b1, out1bdb,
    v1out1, v2out1, v3out1, v4out1, v1outdb,
    d1out1, d2out1, d3out1, d4out1, d1outdb);
    
    lru l1(clk, reset,decindexout[1], waySel, hit, repWay1);
    
	 
	 wire [19:0] mt1out2, mt2out2, mt3out2, mt4out2, mt2outdb;
  wire [127:0] out1d2, out2d2, out3d2, out4d2, out2db;
  wire [7:0] out1b2, out2b2, out3b2, out4b2, out2bdb;
  wire v1out2, v2out2, v3out2, v4out2, v2outdb;
  wire d1out2, d2out2, d3out2, d4out2, d2outdb;
  set set2( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[2], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out2, mt2out2, mt3out2, mt4out2, mt2outdb,
    out1d2, out2d2, out3d2, out4d2, out2db,
    out1b2, out2b2, out3b2, out4b2, out2bdb,
    v1out2, v2out2, v3out2, v4out2, v2outdb,
    d1out2, d2out2, d3out2, d4out2, d2outdb);
    
    lru l2(clk, reset,decindexout[2], waySel, hit, repWay2);
	 
	 wire [19:0] mt1out3, mt2out3, mt3out3, mt4out3, mt3outdb;
  wire [127:0] out1d3, out2d3, out3d3, out4d3, out3db;
  wire [7:0] out1b3, out2b3, out3b3, out4b3, out3bdb;
  wire v1out3, v2out3, v3out3, v4out3, v3outdb;
  wire d1out3, d2out3, d3out3, d4out3, d3outdb;
  set set3( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[3], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out3, mt2out3, mt3out3, mt4out3, mt3outdb,
    out1d3, out2d3, out3d3, out4d3, out3db,
    out1b3, out2b3, out3b3, out4b3, out3bdb,
    v1out3, v2out3, v3out3, v4out3, v3outdb,
    d1out3, d2out3, d3out3, d4out3, d3outdb);
    
    lru l3(clk, reset,decindexout[3], waySel, hit, repWay3);
	 
	 wire [19:0] mt1out4, mt2out4, mt3out4, mt4out4, mt4outdb;
  wire [127:0] out1d4, out2d4, out3d4, out4d4, out4db;
  wire [7:0] out1b4, out2b4, out3b4, out4b4, out4bdb;
  wire v1out4, v2out4, v3out4, v4out4, v4outdb;
  wire d1out4, d2out4, d3out4, d4out4, d4outdb;
  set set4( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[4], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out4, mt2out4, mt3out4, mt4out4, mt4outdb,
    out1d4, out2d4, out3d4, out4d4, out4db,
    out1b4, out2b4, out3b4, out4b4, out4bdb,
    v1out4, v2out4, v3out4, v4out4, v4outdb,
    d1out4, d2out4, d3out4, d4out4, d4outdb);
	 
	lru l4(clk, reset,decindexout[4], waySel, hit, repWay4); 
	 
	wire [19:0] mt1out5, mt2out5, mt3out5, mt4out5, mt5outdb;
  wire [127:0] out1d5, out2d5, out3d5, out4d5, out5db;
  wire [7:0] out1b5, out2b5, out3b5, out4b5, out5bdb;
  wire v1out5, v2out5, v3out5, v4out5, v5outdb;
  wire d1out5, d2out5, d3out5, d4out5, d5outdb;
  set set5( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[5], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out5, mt2out5, mt3out5, mt4out5, mt5outdb,
    out1d5, out2d5, out3d5, out4d5, out5db,
    out1b5, out2b5, out3b5, out4b5, out5bdb,
    v1out5, v2out5, v3out5, v4out5, v5outdb,
    d1out5, d2out5, d3out5, d4out5, d5outdb);

    lru l5(clk, reset,decindexout[5], waySel, hit, repWay5);

	wire [19:0] mt1out6, mt2out6, mt3out6, mt4out6, mt6outdb;
  wire [127:0] out1d6, out2d6, out3d6, out4d6, out6db;
  wire [7:0] out1b6, out2b6, out3b6, out4b6, out6bdb;
  wire v1out6, v2out6, v3out6, v4out6, v6outdb;
  wire d1out6, d2out6, d3out6, d4out6, d6outdb;
  set set6( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[6], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out6, mt2out6, mt3out6, mt4out6, mt6outdb,
    out1d6, out2d6, out3d6, out4d6, out6db,
    out1b6, out2b6, out3b6, out4b6, out6bdb,
    v1out6, v2out6, v3out6, v4out6, v6outdb,
    d1out6, d2out6, d3out6, d4out6, d6outdb); 
	 
    lru l6(clk, reset,decindexout[6], waySel, hit, repWay6);	 
	 
  wire [19:0] mt1out7, mt2out7, mt3out7, mt4out7, mt7outdb;
  wire [127:0] out1d7, out2d7, out3d7, out4d7, out7db;
  wire [7:0] out1b7, out2b7, out3b7, out4b7, out7bdb;
  wire v1out7, v2out7, v3out7, v4out7, v7outdb;
  wire d1out7, d2out7, d3out7, d4out7, d7outdb;
  set set7( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[7], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out7, mt2out7, mt3out7, mt4out7, mt7outdb,
    out1d7, out2d7, out3d7, out4d7, out7db,
    out1b7, out2b7, out3b7, out4b7, out7bdb,
    v1out7, v2out7, v3out7, v4out7, v7outdb,
    d1out7, d2out7, d3out7, d4out7, d7outdb);
    
    lru l7(clk, reset,decindexout[7], waySel, hit, repWay7);
	 
	 
  wire [19:0] mt1out8, mt2out8, mt3out8, mt4out8, mt8outdb;
  wire [127:0] out1d8, out2d8, out3d8, out4d8, out8db;
  wire [7:0] out1b8, out2b8, out3b8, out4b8, out8bdb;
  wire v1out8, v2out8, v3out8, v4out8, v8outdb;
  wire d1out8, d2out8, d3out8, d4out8, d8outdb;
  set set8( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[8], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out8, mt2out8, mt3out8, mt4out8, mt8outdb,
    out1d8, out2d8, out3d8, out4d8, out8db,
    out1b8, out2b8, out3b8, out4b8, out8bdb,
    v1out8, v2out8, v3out8, v4out8, v8outdb,
    d1out8, d2out8, d3out8, d4out8, d8outdb);
	
	lru l8(clk, reset,decindexout[8], waySel, hit, repWay8);

  wire [19:0] mt1out9, mt2out9, mt3out9, mt4out9, mt9outdb;
  wire [127:0] out1d9, out2d9, out3d9, out4d9, out9db;
  wire [7:0] out1b9, out2b9, out3b9, out4b9, out9bdb;
  wire v1out9, v2out9, v3out9, v4out9, v9outdb;
  wire d1out9, d2out9, d3out9, d4out9, d9outdb;
  set set9( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[9], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out9, mt2out9, mt3out9, mt4out9, mt9outdb,
    out1d9, out2d9, out3d9, out4d9, out9db,
    out1b9, out2b9, out3b9, out4b9, out9bdb,
    v1out9, v2out9, v3out9, v4out9, v9outdb,
    d1out9, d2out9, d3out9, d4out9, d9outdb);
	 
	 lru l9(clk, reset,decindexout[9], waySel, hit, repWay9);
	 
	 wire [19:0] mt1out10, mt2out10, mt3out10, mt4out10, mt10outdb;
  wire [127:0] out1d10, out2d10, out3d10, out4d10, out10db;
  wire [7:0] out1b10, out2b10, out3b10, out4b10, out10bdb;
  wire v1out10, v2out10, v3out10, v4out10, v10outdb;
  wire d1out10, d2out10, d3out10, d4out10, d10outdb;
  set set10( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[10], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out10, mt2out10, mt3out10, mt4out10, mt10outdb,
    out1d10, out2d10, out3d10, out4d10, out10db,
    out1b10, out2b10, out3b10, out4b10, out10bdb,
    v1out10, v2out10, v3out10, v4out10, v10outdb,
    d1out10, d2out10, d3out10, d4out10, d10outdb);
	 
	 lru l10(clk, reset,decindexout[10], waySel, hit, repWay10);
	 
	 wire [19:0] mt1out11, mt2out11, mt3out11, mt4out11, mt11outdb;
  wire [127:0] out1d11, out2d11, out3d11, out4d11, out11db;
  wire [7:0] out1b11, out2b11, out3b11, out4b11, out11bdb;
  wire v1out11, v2out11, v3out11, v4out11, v11outdb;
  wire d1out11, d2out11, d3out11, d4out11, d11outdb;
  set set11( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[11], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out11, mt2out11, mt3out11, mt4out11, mt11outdb,
    out1d11, out2d11, out3d11, out4d11, out11db,
    out1b11, out2b11, out3b11, out4b11, out11bdb,
    v1out11, v2out11, v3out11, v4out11, v11outdb,
    d1out11, d2out11, d3out11, d4out11, d11outdb);
	
	lru l11(clk, reset,decindexout[11], waySel, hit, repWay11); 
	 
	  wire [19:0] mt1out12, mt2out12, mt3out12, mt4out12, mt12outdb;
  wire [127:0] out1d12, out2d12, out3d12, out4d12, out12db;
  wire [7:0] out1b12, out2b12, out3b12, out4b12, out12bdb;
  wire v1out12, v2out12, v3out12, v4out12, v12outdb;
  wire d1out12, d2out12, d3out12, d4out12, d12outdb;
  set set12( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[12], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out12, mt2out12, mt3out12, mt4out12, mt12outdb,
    out1d12, out2d12, out3d12, out4d12, out12db,
    out1b12, out2b12, out3b12, out4b12, out12bdb,
    v1out12, v2out12, v3out12, v4out12, v12outdb,
    d1out12, d2out12, d3out12, d4out12, d12outdb);
	 
	 lru l12(clk, reset,decindexout[12], waySel, hit, repWay12);
	 
  wire [19:0] mt1out13, mt2out13, mt3out13, mt4out13, mt13outdb;
  wire [127:0] out1d13, out2d13, out3d13, out4d13, out13db;
  wire [7:0] out1b13, out2b13, out3b13, out4b13, out13bdb;
  wire v1out13, v2out13, v3out13, v4out13, v13outdb;
  wire d1out13, d2out13, d3out13, d4out13, d13outdb;
  set set13( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[13], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out13, mt2out13, mt3out13, mt4out13, mt13outdb,
    out1d13, out2d13, out3d13, out4d13, out13db,
    out1b13, out2b13, out3b13, out4b13, out13bdb,
    v1out13, v2out13, v3out13, v4out13, v13outdb,
    d1out13, d2out13, d3out13, d4out13, d13outdb);
	
	lru l13(clk, reset,decindexout[13], waySel, hit, repWay13); 
	 
  wire [19:0] mt1out14, mt2out14, mt3out14, mt4out14, mt14outdb;
  wire [127:0] out1d14, out2d14, out3d14, out4d14, out14db;
  wire [7:0] out1b14, out2b14, out3b14, out4b14, out14bdb;
  wire v1out14, v2out14, v3out14, v4out14, v14outdb;
  wire d1out14, d2out14, d3out14, d4out14, d14outdb;
  set set14( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[14], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out14, mt2out14, mt3out14, mt4out14, mt14outdb,
    out1d14, out2d14, out3d14, out4d14, out14db,
    out1b14, out2b14, out3b14, out4b14, out14bdb,
    v1out14, v2out14, v3out14, v4out14, v14outdb,
    d1out14, d2out14, d3out14, d4out14, d14outdb);

    lru l14(clk, reset,decindexout[14], waySel, hit, repWay14);
	 
  wire [19:0] mt1out15, mt2out15, mt3out15, mt4out15, mt15outdb;
  wire [127:0] out1d15, out2d15, out3d15, out4d15, out15db;
  wire [7:0] out1b15, out2b15, out3b15, out4b15, out15bdb;
  wire v1out15, v2out15, v3out15, v4out15, v15outdb;
  wire d1out15, d2out15, d3out15, d4out15, d15outdb;
  set set15( clk, reset, tagway, dataway, validway, dirtyway, dirtyin, hit, waySel, decindexout[15], address[3:0], decoffsetout, address[31:12], byteToWrite, inputBlock,
    mt1out15, mt2out15, mt3out15, mt4out15, mt15outdb,
    out1d15, out2d15, out3d15, out4d15, out15db,
    out1b15, out2b15, out3b15, out4b15, out15bdb,
    v1out15, v2out15, v3out15, v4out15, v15outdb,
    d1out15, d2out15, d3out15, d4out15, d15outdb);
	
	lru l15(clk, reset,decindexout[15], waySel, hit, repWay15); 
	
	mux16to1_2bit m1612(repWay0,repWay1, repWay2, repWay3, repWay4,repWay5, repWay6, repWay7, repWay8,repWay9, repWay10, repWay11,repWay12,repWay13, repWay14, repWay15, address[7:4],repOut); 
	 
    wire outm1comp0, outm1comp1, outm1comp2, outm1comp3, outm1comp4, outm1comp5, outm1comp6, outm1comp7, outm1comp8, outm1comp9, outm1comp10, outm1comp11, outm1comp12, outm1comp13, outm1comp14, outm1comp15;
    Main_Tag_Comparator cm1t0  ( decindexout[0]  & out1comp0,  address[31:12], mt1out0,  outm1comp0 );
	Main_Tag_Comparator cm1t1  ( decindexout[1]  & out1comp1,  address[31:12], mt1out1,  outm1comp1 );
	Main_Tag_Comparator cm1t2  ( decindexout[2]  & out1comp2,  address[31:12], mt1out2,  outm1comp2 );
	Main_Tag_Comparator cm1t3  ( decindexout[3]  & out1comp3,  address[31:12], mt1out3,  outm1comp3 );
	Main_Tag_Comparator cm1t4  ( decindexout[4]  & out1comp4,  address[31:12], mt1out4,  outm1comp4 );
	Main_Tag_Comparator cm1t5  ( decindexout[5]  & out1comp5,  address[31:12], mt1out5,  outm1comp5 );
	Main_Tag_Comparator cm1t6  ( decindexout[6]  & out1comp6,  address[31:12], mt1out6,  outm1comp6 );
	Main_Tag_Comparator cm1t7  ( decindexout[7]  & out1comp7,  address[31:12], mt1out7,  outm1comp7 );
	Main_Tag_Comparator cm1t8  ( decindexout[8]  & out1comp8,  address[31:12], mt1out8,  outm1comp8 );
	Main_Tag_Comparator cm1t9  ( decindexout[9]  & out1comp9,  address[31:12], mt1out9,  outm1comp9 );
	Main_Tag_Comparator cm1t10 ( decindexout[10] & out1comp10, address[31:12], mt1out10, outm1comp10 );
	Main_Tag_Comparator cm1t11 ( decindexout[11] & out1comp11, address[31:12], mt1out11, outm1comp11 );
	Main_Tag_Comparator cm1t12 ( decindexout[12] & out1comp12, address[31:12], mt1out12, outm1comp12 );
	Main_Tag_Comparator cm1t13 ( decindexout[13] & out1comp13, address[31:12], mt1out13, outm1comp13 );
	Main_Tag_Comparator cm1t14 ( decindexout[14] & out1comp14, address[31:12], mt1out14, outm1comp14 );
	Main_Tag_Comparator cm1t15 ( decindexout[15] & out1comp15, address[31:12], mt1out15, outm1comp15 );

	wire outm2comp0, outm2comp1, outm2comp2, outm2comp3, outm2comp4, outm2comp5, outm2comp6, outm2comp7, outm2comp8, outm2comp9, outm2comp10, outm2comp11, outm2comp12, outm2comp13, outm2comp14, outm2comp15;
    Main_Tag_Comparator cm2t0  ( decindexout[0]  & out2comp0,  address[31:12], mt2out0,  outm2comp0 );
	Main_Tag_Comparator cm2t1  ( decindexout[1]  & out2comp1,  address[31:12], mt2out1,  outm2comp1 );
	Main_Tag_Comparator cm2t2  ( decindexout[2]  & out2comp2,  address[31:12], mt2out2,  outm2comp2 );
	Main_Tag_Comparator cm2t3  ( decindexout[3]  & out2comp3,  address[31:12], mt2out3,  outm2comp3 );
	Main_Tag_Comparator cm2t4  ( decindexout[4]  & out2comp4,  address[31:12], mt2out4,  outm2comp4 );
	Main_Tag_Comparator cm2t5  ( decindexout[5]  & out2comp5,  address[31:12], mt2out5,  outm2comp5 );
	Main_Tag_Comparator cm2t6  ( decindexout[6]  & out2comp6,  address[31:12], mt2out6,  outm2comp6 );
	Main_Tag_Comparator cm2t7  ( decindexout[7]  & out2comp7,  address[31:12], mt2out7,  outm2comp7 );
	Main_Tag_Comparator cm2t8  ( decindexout[8]  & out2comp8,  address[31:12], mt2out8,  outm2comp8 );
	Main_Tag_Comparator cm2t9  ( decindexout[9]  & out2comp9,  address[31:12], mt2out9,  outm2comp9 );
	Main_Tag_Comparator cm2t10 ( decindexout[10] & out2comp10, address[31:12], mt2out10, outm2comp10 );
	Main_Tag_Comparator cm2t11 ( decindexout[11] & out2comp11, address[31:12], mt2out11, outm2comp11 );
	Main_Tag_Comparator cm2t12 ( decindexout[12] & out2comp12, address[31:12], mt2out12, outm2comp12 );
	Main_Tag_Comparator cm2t13 ( decindexout[13] & out2comp13, address[31:12], mt2out13, outm2comp13 );
	Main_Tag_Comparator cm2t14 ( decindexout[14] & out2comp14, address[31:12], mt2out14, outm2comp14 );
	Main_Tag_Comparator cm2t15 ( decindexout[15] & out2comp15, address[31:12], mt2out15, outm2comp15 );

	wire outm3comp0, outm3comp1, outm3comp2, outm3comp3, outm3comp4, outm3comp5, outm3comp6, outm3comp7, outm3comp8, outm3comp9, outm3comp10, outm3comp11, outm3comp12, outm3comp13, outm3comp14, outm3comp15;
	Main_Tag_Comparator cm3t0  ( decindexout[0]  & out3comp0,  address[31:12], mt3out0,  outm3comp0 );
	Main_Tag_Comparator cm3t1  ( decindexout[1]  & out3comp1,  address[31:12], mt3out1,  outm3comp1 );
	Main_Tag_Comparator cm3t2  ( decindexout[2]  & out3comp2,  address[31:12], mt3out2,  outm3comp2 );
	Main_Tag_Comparator cm3t3  ( decindexout[3]  & out3comp3,  address[31:12], mt3out3,  outm3comp3 );
	Main_Tag_Comparator cm3t4  ( decindexout[4]  & out3comp4,  address[31:12], mt3out4,  outm3comp4 );
	Main_Tag_Comparator cm3t5  ( decindexout[5]  & out3comp5,  address[31:12], mt3out5,  outm3comp5 );
	Main_Tag_Comparator cm3t6  ( decindexout[6]  & out3comp6,  address[31:12], mt3out6,  outm3comp6 );
	Main_Tag_Comparator cm3t7  ( decindexout[7]  & out3comp7,  address[31:12], mt3out7,  outm3comp7 );
	Main_Tag_Comparator cm3t8  ( decindexout[8]  & out3comp8,  address[31:12], mt3out8,  outm3comp8 );
	Main_Tag_Comparator cm3t9  ( decindexout[9]  & out3comp9,  address[31:12], mt3out9,  outm3comp9 );
	Main_Tag_Comparator cm3t10 ( decindexout[10] & out3comp10, address[31:12], mt3out10, outm3comp10 );
	Main_Tag_Comparator cm3t11 ( decindexout[11] & out3comp11, address[31:12], mt3out11, outm3comp11 );
	Main_Tag_Comparator cm3t12 ( decindexout[12] & out3comp12, address[31:12], mt3out12, outm3comp12 );
	Main_Tag_Comparator cm3t13 ( decindexout[13] & out3comp13, address[31:12], mt3out13, outm3comp13 );
	Main_Tag_Comparator cm3t14 ( decindexout[14] & out3comp14, address[31:12], mt3out14, outm3comp14 );
	Main_Tag_Comparator cm3t15 ( decindexout[15] & out3comp15, address[31:12], mt3out15, outm3comp15 );
	
	wire outm4comp0, outm4comp1, outm4comp2, outm4comp3, outm4comp4, outm4comp5, outm4comp6, outm4comp7, outm4comp8, outm4comp9, outm4comp10, outm4comp11, outm4comp12, outm4comp13, outm4comp14, outm4comp15;
	Main_Tag_Comparator cm4t0  ( decindexout[0]  & out4comp0,  address[31:12], mt4out0,  outm4comp0 );
	Main_Tag_Comparator cm4t1  ( decindexout[1]  & out4comp1,  address[31:12], mt4out1,  outm4comp1 );
	Main_Tag_Comparator cm4t2  ( decindexout[2]  & out4comp2,  address[31:12], mt4out2,  outm4comp2 );
	Main_Tag_Comparator cm4t3  ( decindexout[3]  & out4comp3,  address[31:12], mt4out3,  outm4comp3 );
	Main_Tag_Comparator cm4t4  ( decindexout[4]  & out4comp4,  address[31:12], mt4out4,  outm4comp4 );
	Main_Tag_Comparator cm4t5  ( decindexout[5]  & out4comp5,  address[31:12], mt4out5,  outm4comp5 );
	Main_Tag_Comparator cm4t6  ( decindexout[6]  & out4comp6,  address[31:12], mt4out6,  outm4comp6 );
	Main_Tag_Comparator cm4t7  ( decindexout[7]  & out4comp7,  address[31:12], mt4out7,  outm4comp7 );
	Main_Tag_Comparator cm4t8  ( decindexout[8]  & out4comp8,  address[31:12], mt4out8,  outm4comp8 );
	Main_Tag_Comparator cm4t9  ( decindexout[9]  & out4comp9,  address[31:12], mt4out9,  outm4comp9 );
	Main_Tag_Comparator cm4t10 ( decindexout[10] & out4comp10, address[31:12], mt4out10, outm4comp10 );
	Main_Tag_Comparator cm4t11 ( decindexout[11] & out4comp11, address[31:12], mt4out11, outm4comp11 );
	Main_Tag_Comparator cm4t12 ( decindexout[12] & out4comp12, address[31:12], mt4out12, outm4comp12 );
	Main_Tag_Comparator cm4t13 ( decindexout[13] & out4comp13, address[31:12], mt4out13, outm4comp13 );
	Main_Tag_Comparator cm4t14 ( decindexout[14] & out4comp14, address[31:12], mt4out14, outm4comp14 );
	Main_Tag_Comparator cm4t15 ( decindexout[15] & out4comp15, address[31:12], mt4out15, outm4comp15 );


	wire [1:0] encout;
	encoder enc ( outm1comp0 | outm1comp1 | outm1comp2 | outm1comp3 | outm1comp4 | outm1comp5 | outm1comp6 | outm1comp7 | outm1comp8 | outm1comp9 | outm1comp10 | outm1comp11 | outm1comp12 | outm1comp13 | outm1comp14 | outm1comp15, 
	 outm2comp0 | outm2comp1 | outm2comp2 | outm2comp3 | outm2comp4 | outm2comp5 | outm2comp6 | outm2comp7 | outm2comp8 | outm2comp9 | outm2comp10 | outm2comp11 | outm2comp12 | outm2comp13 | outm2comp14 | outm2comp15,
	 outm3comp0 | outm3comp1 | outm3comp2 | outm3comp3 | outm3comp4 | outm3comp5 | outm3comp6 | outm3comp7 | outm3comp8 | outm3comp9 | outm3comp10 | outm3comp11 | outm3comp12 | outm3comp13 | outm3comp14 | outm3comp15,
	 outm4comp0 | outm4comp1 | outm4comp2 | outm4comp3 | outm4comp4 | outm4comp5 | outm4comp6 | outm4comp7 | outm4comp8 | outm4comp9 | outm4comp10 | outm4comp11 | outm4comp12 | outm4comp13 | outm4comp14 | outm4comp15,
	 encout, hit);
	
	mux2to1_2bit themux ( repOut, encout, hit, waySel );

    wire [2:0] count;
    count cnt1( clk, reset, hit, count);
	
  cacheControl ctrl( clk, reset, memRead, memWrite, waySel, valid, hit, count, 
	    tagway, validway, dirtyway, dirtyin, dataway);

  mux16to1_1bit validfinmux ( v0outdb, v1outdb, v2outdb, v3outdb, v4outdb, 
										v5outdb, v6outdb, v7outdb, v8outdb, v9outdb,
										v10outdb, v11outdb, v12outdb, v13outdb, v14outdb, v15outdb,
										address[7:4], valid);
										
  mux16to1_1bit dirtyfinmux ( d0outdb, d1outdb, d2outdb, d3outdb, d4outdb,
										d5outdb, d6outdb, d7outdb, d8outdb, d9outdb, d10outdb,
										d11outdb, d12outdb, d13outdb, d14outdb, d15outdb, address[7:4], dirty );
  
  mux16to1_8bit bytefinmux ( out0bdb, out1bdb, out2bdb, out3bdb, out4bdb, out5bdb, out6bdb,
										out7bdb, out8bdb, out9bdb, out10bdb, out11bdb, out12bdb,
										out13bdb, out14bdb, out15bdb, address[7:4], byteDataOutFromCache);
  
  wire [19:0] mout;
  
  mux16to1_20bit maintagfinmux (mt0outdb, mt1outdb, mt2outdb, mt3outdb, mt4outdb, mt5outdb,
										 mt6outdb, mt7outdb, mt8outdb, mt9outdb, mt10outdb, mt11outdb,
										 mt12outdb, mt13outdb, mt14outdb, mt15outdb, address[7:4], mout);
										 
  wire [3:0] hout;
										 
  mux4to1_4bit halttagfinmux ( ht1outdb, ht2outdb, ht3outdb, ht4outdb, waySel, hout);
  
  assign tag_out = {mout, hout};
  
  mux16to1_128bit byte16finmux ( out0db, out1db, out2db, out3db, out4db, out5db, out6db,
											out7db, out8db, out9db, out10db, out11db, out12db, out13db, out14db,
											out15db,address[7:4], replacementBlock);
  
  mux2to1_1bit writeBackMux( 1'b0, 1'b1, ~hit && dirty, writeBackSignal);
  
endmodule
	
module cacheTestbench;
  
  reg clk;
  reg reset;
  reg [127:0] inputBlock;
  reg [7:0] byteToWrite;

  reg [31:0] address;

  reg memWrite, memRead;
  wire hit, dirty, valid;
  wire [1:0] waySel;
  wire [23:0] tag_out;
  wire [127:0] replacementBlock;
  wire [7:0] byteDataOutFromCache;
  wire writeBackSignal;
  
  Cache cache_1(.clk(clk), .reset(reset), .byteToWrite(byteToWrite),
  .inputBlock(inputBlock), .address(address), .memWrite(memWrite), 
  .memRead(memRead), .hit(hit),.valid(valid), .dirty(dirty), .tag_out(tag_out), .waySel(waySel), 
  .replacementBlock(replacementBlock), .byteDataOutFromCache(byteDataOutFromCache), 
  .writeBackSignal(writeBackSignal));
  
  always
    #5 clk=~clk;
  initial
    begin
      clk=0; reset=1;
      #10  reset=0;
      
      #10
      
      /*
      1. Cache Miss (READ) Set 1  (Data gets written to way1)
      physicalAddressToCache = 32'h00_11_22_33; 
      READ MISS - must take a block from memory and read from that block in the cache
      */
      memRead = 1;  
      memWrite = 0;
		address = 32'b0000_0000_0001_0001_0010_0010_0011_0011;
      
      //16 B data coming from main memory
	   #10
      inputBlock = 128'hAA_BB_CC_DD_EE_00_11_22_AA_BB_CC_DD_EE_00_11_22;
      
      //byteToWrite is a don't care as it is a memRead signal
      byteToWrite = 8'd0;
		
		#30
		//2. Changing only the tag; The way should change; this should again be a miss initially
		memRead = 1;  
      memWrite = 0;
		address = 32'b0000_0000_0001_0001_0011_0010_0011_0011; 
      
      //16 B data (that is actually supposed to be in the memory at the above address)
	   #10
      inputBlock = 128'hBB_BB_CC_DD_EE_00_11_22_AA_BB_CC_DD_EE_00_11_22;
		
		#30
		//3. Using the first address again; should give a hit.
		
		memRead = 1;  
      memWrite = 0;
		address = 32'b0000_0000_0001_0001_0011_0010_0011_0011;
		
		//4. Miss again in the same set.
		memRead = 1;  
      memWrite = 0;
		address = 32'b0000_0000_0001_0011_0011_0010_0011_0011; 
      
      //16 B data (that is actually supposed to be in the memory at the above address)
	   #10
      inputBlock = 128'hBB_BB_CC_EE_EE_00_11_22_AA_BB_CC_DD_EE_00_11_22;
		 
		//5. Again miss in the same set.
		#30
		memRead = 1;  
      memWrite = 0;
		address = 32'b0000_0000_0001_0011_0011_0011_0011_0011; 
      
      //16 B data (that is actually supposed to be in the memory at the above address)
	   #10
      inputBlock = 128'hBB_BB_CC_EE_EE_00_11_22_AA_BB_CC_DD_EE_00_11_22;
		
		//6. Again miss in the same set. This time it should replace the 00 way by the lru policy.
		#30
		memRead = 1;  
      memWrite = 0;
		address = 32'b0000_0000_0011_0011_0011_0010_0011_0011; 
      
      //16 B data (that is actually supposed to be in the memory at the above address)
	   #10
      inputBlock = 128'hBB_BB_DD_EE_EE_00_11_22_AA_BB_CC_DD_EE_00_11_22;
		
		//7. Hit
		#30
		memRead = 1;  
      memWrite = 0;
		address = 32'b0000_0000_0011_0011_0011_0010_0011_0011; 
      
      //16 B data (that is actually supposed to be in the memory at the above address)
	   #10
      inputBlock = 128'hBB_BB_DD_EE_EE_00_11_22_AA_BB_CC_DD_EE_00_11_22;
	  
      #50 $finish; 
    end
    
endmodule	
