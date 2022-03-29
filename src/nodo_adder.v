module nodo_adder(HCout, VCout, A, B, HCin, VCin);
    // Tenemos carry vertical y horizontal
    input A, B, HCin, VCin;
    output HCout, VCout;
    wire W1;
    
    assign W1 = A & B;
    full_adder full_adder1(HCout, VCout, W1, VCin, HCin);
endmodule