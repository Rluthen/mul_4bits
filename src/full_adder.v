module full_adder(Cout, S, A, B, Cin);
    input A, B, Cin;
    output Cout, S;
    wire S1, C1, C2;
    
    xor(S1, A, B);
    and(C1, A, B);
    xor(S, S1, Cin);
    and(C2, S1, Cin);
    or(Cout, C1, C2);
endmodule