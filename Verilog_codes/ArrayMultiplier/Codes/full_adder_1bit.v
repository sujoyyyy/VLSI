module full_adder_1bit(
    input in1,
    input in2,
    input cin,
    output sum,
    output cout
);
    wire w1, w2, w3;
    xor x1(w1, in1, in2);
    xor x2(sum, w1, cin);
    
    
    and a1(w2, in1, in2);
    and a2(w3, w1, cin);
    or o1(cout, w2, w3);

endmodule