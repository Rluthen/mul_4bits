module mul_4bits(p, a, b);
    input [3:0] a, b;
    output [7:0] p;
    wire [3:0] sum0, sum1, sum2, sum3, sum4, sum5, sum6;
    wire [3:0] c0, c1, c2, c3, c4, c5, c6;
    
    // Primera fila
    nodo_adder nodo0(c0[0], sum0[0], a[0], b[0], 0, 0);
    nodo_adder nodo1(c1[0], sum1[0], a[1], b[0], c0[0], 0);
    nodo_adder nodo2(c2[0], sum2[0], a[2], b[0], c1[0], 0);
    nodo_adder nodo3(c3[0], sum3[0], a[3], b[0], c2[0], 0);
    // Segunda fila
    nodo_adder nodo4(c1[1], sum1[1], a[0], b[1], 0, sum1[0]);
    nodo_adder nodo5(c2[1], sum2[1], a[1], b[1], c1[1], sum2[0]);
    nodo_adder nodo6(c3[1], sum3[1], a[2], b[1], c2[1], sum3[0]);
    nodo_adder nodo7(c4[1], sum4[1], a[3], b[1], c3[1], c3[0]);
    // Tercera fila
    nodo_adder nodo8(c2[2], sum2[2], a[0], b[2], 0, sum2[1]);
    nodo_adder nodo9(c3[2], sum3[2], a[1], b[2], c2[2], sum3[1]);
    nodo_adder nodo10(c4[2], sum4[2], a[2], b[2], c3[2], sum4[1]);
    nodo_adder nodo11(c5[2], sum5[2], a[3], b[2], c4[2], c4[1]);
    // Cuarta fila
    nodo_adder nodo12(c3[3], sum3[3], a[0], b[3], 0, sum3[2]);
    nodo_adder nodo13(c4[3], sum4[3], a[1], b[3], c3[3], sum4[2]);
    nodo_adder nodo14(c5[3], sum5[3], a[2], b[3], c4[3], sum5[2]);
    nodo_adder nodo15(c6[3], sum6[3], a[3], b[3], c5[3], c5[2]);
    
    // resultado
    assign p[0] = sum0[0];
    assign p[1] = sum1[1];
    assign p[2] = sum2[2];
    assign p[3] = sum3[3];
    assign p[4] = sum4[3];
    assign p[5] = sum5[3];
    assign p[6] = sum6[3];
    assign p[7] = c6[3];
endmodule