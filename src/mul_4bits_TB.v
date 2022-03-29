module mul_4bits_TB();
    reg [3:0] a, b;
    wire [7:0] p;
    
    mult4 dut(p, a, b);
    
    initial begin
        a[3]=1; a[2]=1; a[1]=1; a[0]=1;
        b[3]=1; b[2]=1; b[1]=1; b[0]=1;
        #50 $stop;
    end
endmodule