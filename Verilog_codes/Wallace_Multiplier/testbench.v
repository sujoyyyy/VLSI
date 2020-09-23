`include "wallace.v"

module tbench;

reg [31:0] a, b;
wire [63:0]out;

wallace test (a, b, out);

initial
begin
	a = 32'd1774;
	b = 32'd19;
	#10$display("  a=%d\n  b=%d\nout=%d", a, b, out);
end
initial
begin
    $dumpfile("wallace.vcd");      
    $dumpvars;
end    
endmodule