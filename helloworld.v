//comments
/**
 * All code in Verilog written in 'module'
 * Compiler SHOULD UNDERSTAND which module is 'main'
 * 'main' module in Verilog = name of Project i.e test
*/

//This code will set button on CPU Cyclone IV to receive signals
//The button itself is connected to CPU on  98 pin
//The LED is set to output signal (light), and connected to CPU
//via pin nr. 100

//All pin nr. that are in use you can see at  Pin Planner 
//which is located BELOW "Help" upper section and one icon right
//Then there at the botton you see your X , Y and PIN_nr which
//it is connected to, then at drawing zoom in to look closely
module test((* chip_pin = "98" *) input X,
				(* chip_pin = "100" *) output Y);
	
	assign Y = X;
	
endmodule