// lab1
// ucsd CSE
// 1/13/2023
// starter code Bryan Chin, All rights reserved.
//
module minduDec (
		 output logic [6:0] Segments,  // seven segment signals
		 input logic [4:0]  binNum     // binary number [0-19]
		 );

   // TODO-1: If the input BCM value (binNum) is more than 19,
   // TODO-1: display nothing on the 7-segment display.
   // TODO-1: create some logic for Segments
   // TODO-1: Segments[0] is LED A, Segments[1] is LED B
   // TODO-1: Segements is active LOW.  That is an LED is on when
   // TODO-1: the corresponding signal is LOW.  An LED is off when
   // TODO-1: the corresponding signal is HIGH.
   // TDD0-1: 
   // TODO-1: if the binNum is not between 0 and 19 inclusive
   // TODO-1: all the Segment LEDs should be off.
   // TDD0-1: 
   // TODO-1: you can implement Segments using
   // TODO-1: behavioural system verilog
   // TODO-1: 
   // TODO-1: always_comb begin
   // TODO-1:     some kind of case statement as shown in class
   // TODO-1: end   // always_comb
   // TDD0-1: 
   // TODO-1: OR 
   // TODO-1:
   // TODO-1: you can implement
   // TODO-1: 7 assign statements, one for each LED
   // TODO-1: as either SOP or POS
   // TODO-1: as in 
   // TODO-1: assign Segment[0] =  (  ) + ( ) + . . .
   // TODO-1: the parentheses are not needed as & has higher precedence
   // TODO-1: than + 
   // TODO-1:
   // TODO-1: assign Segment[0]  = ( + + + + ) & ( +  +  +   + ) & . . .
   // TODO-1: the parentheses are required as + has lower precedence
   // TODO-1: than & 
   // TODO-1:
	
	always_comb begin
		case (binNum)
		5'b00000 : Segments = 7'b1000000;//0
		5'b00001	: Segments = 7'b1111001;
		5'b00010	: Segments = 7'b0100100;
		5'b00011	: Segments = 7'b0110000;
		5'b00100	: Segments = 7'b0011001;
		5'b00101	: Segments = 7'b0010010;//5
		5'b00110	: Segments = 7'b0000010;
		5'b00111	: Segments = 7'b1111000;
		5'b01000	: Segments = 7'b0000000;
		5'b01001	: Segments = 7'b0011000;
		5'b01010	: Segments = 7'b0001000;//10
		5'b01011	: Segments = 7'b0000011;
		5'b01100	: Segments = 7'b1000110;
		5'b01101	: Segments = 7'b0100001;
		5'b01110	: Segments = 7'b0000110;
		5'b01111	: Segments = 7'b0001110;//15
		5'b10000	: Segments = 7'b0010000;
		5'b10001	: Segments = 7'b0001001;
		5'b10010	: Segments = 7'b1111011;
		5'b10011	: Segments = 7'b1100001;//19
		5'b10100	: Segments = 7'b1111111;
		5'b10101	: Segments = 7'b1111111;
		5'b10110	: Segments = 7'b1111111;
		5'b10111	: Segments = 7'b1111111;
		5'b11000	: Segments = 7'b1111111;
		5'b11001	: Segments = 7'b1111111;
		5'b11010	: Segments = 7'b1111111;
		5'b11011	: Segments = 7'b1111111;
		5'b11100	: Segments = 7'b1111111;
		5'b11101	: Segments = 7'b1111111;
		5'b11110	: Segments = 7'b1111111;
		5'b11111	: Segments = 7'b1111111;
    endcase
	end

endmodule
