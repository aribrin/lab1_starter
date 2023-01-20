// lab1
// ucsd CSE
// 1/13/2023
// starter code Bryan Chin, All rights reserved.
//
// cse140l_wi23
//
// outputs HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 each is 7 bits and active low
// inputs SW[9:0] 10 switches.
// 
module lab1(
	    output logic [6:0] HEX5,
	    output logic [6:0] HEX4,
	    output logic [6:0] HEX3,
	    output logic [6:0] HEX2,
	    output logic [6:0] HEX1, 
	    output logic [6:0] HEX0,
	    input logic [9:0]  SW
	    );

	// TODO-1: Implement the Binary Coded Mindu Decimal circuit.
        // TODO-1: instantiate two minduDec circuits.
        // TODO-1: hookup one minduDec to SW[4:0] and
        // TODO-1: generate a 7-segment value
        // TODO-1: for HEX0
        // TODO-1: hookup one minduDec to SW[9:5] and 
        // TODO-1: generate a 7-segement value
        // TODO-1: for HEX1
        // TODO-1: Use explicit port naming as shown in class. 
        // TODO-1: decoder d0 (.out(someOutput), .sel(aSel), .i1(aValue), .i2(bValue));
        //   

        // TODO-2: implement a mux expression for HEX5, HEX4, HEX3, HEX2, HEX1, HEX0
        // TODO-2: for the condition you might want to define a new wire (logic) as in
        // TODO-2: logic isBad;   // true if the input value is bad 
        // TODO-2: assign isBad =  
        // TODO-2: logic isBanana;   // true if the input value encodes "7 10" 
        // TODO-2: assign isBanana =     
        // TODO-2:  
        // TODO-2: assign HEX5 =  (     )   ?    (     )   :    (     ); 
        // TODO-2: NOTE: if needed you can next mux expressions 
        // TODO-2: assign blort = (     )  ?   (       )   :    ( (   ) ? (    )  : (   ) );  
        // TODO-2:
        // TODO-2: OR us always_comb with if statemetns
        // TODO-2: always_comb begin
        // TODO-2:    if (    ) begin
        // TODO-2:         HEX5  =   
        // TODO-2:         HEX4  =   
        // TODO-2:         HEX3  =   
        // TODO-2:    end 
        // TODO-2: if statements can be nested
        // TODO-2: always_comb begin
        // TODO-2:    if (    ) begin
        // TODO-2:         if (    )
        // TODO-2:              HEX1 =  
        // TODO-2:         else
        // TODO-2:              HEX1 =   
        // TODO-2:    end 
        // TODO-2: end     
        // TODO-2: !!!!IMPORTANT - make sure you always have an else!!!!!   
        // TODO-2: 
        // TODO-2: Be consistent,  you can't have a signal as the left-hand-side
        // TODO-2: (LHS) of both a behavioural block (always_comb) and RTL (assign).

        // TODO-3: clean up this file (remove the TODO's) and add your own comments. 
endmodule
