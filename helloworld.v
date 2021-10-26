//comments
/**
 * All code in Verilog written in 'module'
 * Compiler SHOULD UNDERSTAND which module is 'main'
 * 'main' module in Verilog = name of Project i.e test
*/
module test((* chip_pin = "98" *) input X,
				(* chip_pin = "100" *) output Y);
	
	assign Y = X;
	
endmodule