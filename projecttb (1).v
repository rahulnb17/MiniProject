`include "project.v"

module tb;
    reg T,A,B,C,D;
    wire E,F,G,H,V;
    project P1 (T,A,B,C,D,E,F,G,H,V);

    initial begin
        $dumpfile("projecttb.vcd");
        $dumpvars(0,tb);
    end
    initial begin
	$display("T|A B C D | E F G H|V");
        $monitor("%b|%b %b %b %b | %b %b %b %b|%b",T,A,B,C,D,E,F,G,H,V);
	T=1'b1;
	A=1'b1;
	B=1'b0;
	C=1'b1;
	D=1'b1;
    end 
endmodule



            
            