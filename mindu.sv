// lab1
// ucsd CSE
// 1/13/2023
// starter code Bryan Chin, All rights reserved.
//
module minduDec (
		 output logic [6:0] Segments,  // seven segment signals
		 input logic [4:0]  binNum     // binary number [0-19]
		 );

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

endmodule
	

	
	
	
	
	
