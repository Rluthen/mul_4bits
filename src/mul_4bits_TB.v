module mul_4bits_TB();
reg [3:0] a, b;
wire [7:0] p;

mul_4bits dut(p, a, b);

initial begin
    a[3]=0; a[2]=0; a[1]=0; a[0]=1;
    b[3]=0; b[2]=0; b[1]=0; b[0]=1;

    forever #10  a = a + 1;
    
end
initial begin
    forever #160 b = b + 1;
end
endmodule