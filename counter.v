module counter(input clk,rst);
integer i=0;
always@(posedge clk) begin
    if(rst==0) begin
        if(i<10) begin
            i=i+1;
        end else if(i==10) begin
            i=0;
        end
    end
    else begin
        i=1'bx; 
        end
     
end
endmodule
        

