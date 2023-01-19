`timescale 1ns / 1ns
`default_nettype none
module lab1_tb;
    reg CLOCK_50 = 0;
   
    logic [9:0] SW;
    logic [6:0] HEX0;
	logic [6:0] HEX1;
	logic [6:0] HEX2;
	logic [6:0] HEX3;
	logic [6:0] HEX4;
	logic [6:0] HEX5;
   
    lab1 l1 (.HEX5(HEX5),
             .HEX4(HEX4),
             .HEX3(HEX3),
             .HEX2(HEX2),
             .HEX1(HEX1),
             .HEX0(HEX0),
             .SW(SW));

    initial begin
		$display("Checking valid input...");
        SW = 10'b00111_00011;
	    #1;
        assert(HEX5 == 7'b1111111);
		assert(HEX4 == 7'b1111111);
		assert(HEX3 == 7'b1111111);
		assert(HEX2 == 7'b1111111);
		assert(HEX1 == 7'b1111000);
		assert(HEX0 == 7'b0110000);
        
		$display("Checking invalid input (1)...");
        SW = 10'b10111_00011;
	    #1;
        assert(HEX5 == 7'b0000011);
		assert(HEX4 == 7'b0001000);
		assert(HEX3 == 7'b0100001);
		assert(HEX2 == 7'b1111111);
		assert(HEX1 == 7'b1111111);
		assert(HEX0 == 7'b0110000);
        
		$display("Checking invalid input (2)...");
        SW = 10'b00111_11011;
	    #1;
        assert(HEX5 == 7'b0000011);
		assert(HEX4 == 7'b0001000);
		assert(HEX3 == 7'b0100001);
		assert(HEX2 == 7'b1111111);
		assert(HEX1 == 7'b1111000);
		assert(HEX0 == 7'b1111111);
		  
		$display("Checking invalid input (3)...");
        SW = 10'b10111_11011;
	    #1;
        assert(HEX5 == 7'b0000011);
		assert(HEX4 == 7'b0001000);
		assert(HEX3 == 7'b0100001);
		assert(HEX2 == 7'b1111111);
		assert(HEX1 == 7'b1111111);
		assert(HEX0 == 7'b1111111);
		  
		$display("BANANA!");
        SW = 10'b00111_00110;
	    #1;
        assert(HEX5 == 7'b0000011);
		assert(HEX4 == 7'b0001000);
		assert(HEX3 == 7'b0101011);
		assert(HEX2 == 7'b0001000);
		assert(HEX1 == 7'b0101011);
		assert(HEX0 == 7'b0001000);
		 
		$display("All Test Cases Passed!");
   end
  endmodule
      
