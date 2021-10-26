/**
 * module = some group of logic gates
 * Every module has INPUTs and OUTPUTs
 *
*/

module
test
//wand = wire + AND (group all outputs and put AND gate after
(input X0,X1,A,B, output wand N0, output Y, YY);

//wire is also builtin, represent REAL wire in circuit
//wire that comes AFTER NOT GATE into And1
wire AfterNot1;
//wire that comes after And1 Gate
wire AfterAnd1;
//wire after And2 gate
wire AfterAnd2;
//builtin not <name> (<out>, <in>, <in>, ...)
not Not1 (AfterNot1,A);
//builtin and <name> (<out>, <in>, <in>, ...)
and And1(AfterAnd1, X0, AfterNot1);
//And2 gate
and And2 (AfterAnd2, A, X1);
//OR gate (1)
or Or1 (Y, AfterAnd1, AfterAnd2);

//builtin bufif0(out, in, in, ...)
//buffer is ALWAYS put on TOP modules (no need to put into deeper
//modules, because, there is no need of them, only TOP modules
//buffer will be connect directly to OUTPUT
//bufif0(), bufif1(), where 0 means, that on INPUT end is INVERTER
//(not), and 1 means, that there is no INVERTER (not) at INPUT end

//There is also notif0/notif1, and at this time we put INVERTER
//on data wire, not on trigger (button) wire, as we did with bufif
bufif0 BUFFER(YY, A, B);

not Not2(N0,X0), Not3(N0, X1), Not4(N0, A);

endmodule

/**
 * To view schema, that synthesis tool is done, goto
 * From left "Task  Compilation" menu to "Analysis & Synthesis
 * Netlist Viewers ---> RTL Viewer (double click)
*/
