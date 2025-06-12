module svnsegment(output reg [6:0]a, input [3:0]x);
   always@(*) begin
    if(x==4'b0000) begin
    a=7'b1111110;
    end else if(x==4'b0001) begin
    a=7'b0110000; 
    end else if(x==4'b0010) begin
    a=7'b1101101; 
    end else if(x==4'b0011) begin
    a[0]=1;a[1]=1;a[2]=1;a[3]=1;a[4]=0;a[5]=0;a[6]=1;
    end else if(x==4'b0100) begin
    a[0]=0;a[1]=0;a[2]=1;a[3]=0;a[4]=0;a[5]=1;a[6]=1;
    end else if(x==4'b0101) begin
    a[0]=1;a[1]=0;a[2]=1;a[3]=1;a[4]=0;a[5]=1;a[6]=1;
    end else if(x==4'b0110) begin
    a[0]=1;a[1]=0;a[2]=1;a[3]=1;a[4]=1;a[5]=1;a[6]=1;
    end else if(x==4'b0111) begin
    a[0]=1;a[1]=1;a[2]=1;a[3]=0;a[4]=0;a[5]=0;a[6]=0; 
    end else if(x==4'b1000) begin
    a[0]=1;a[1]=1;a[2]=1;a[3]=1;a[4]=1;a[5]=1;a[6]=1;
    end else if(x==4'b1001) begin
    a[0]=1;a[1]=1;a[2]=1;a[3]=1;a[4]=0;a[5]=1;a[6]=1; 
    end else begin
    a[0]=1'bx;a[1]=1'bx;a[2]=1'bx;a[3]=1'bx;a[4]=1'bx;a[5]=1'bx;a[6]=1'bx; end
end
endmodule
