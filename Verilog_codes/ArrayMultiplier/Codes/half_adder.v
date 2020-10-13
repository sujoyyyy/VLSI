module half_adder(
    input in1,
    input in2,
    output sum,
    output cout
);
    xor x1(sum, in1, in2);
    and a1(cout, in1, in2);
    
endmodule