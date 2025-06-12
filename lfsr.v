module lfsr_fib(output reg [15:0]no, input clk,rst);
    reg xr;
    reg [3:0]cnt;
  always@(posedge clk or posedge rst) begin
     if(rst) begin
        no <= 16'd693;
        cnt <= 4'd0;
    end else if(cnt<10) begin
        xr = no[15]^no[13]^no[12]^no[10];
        no = no<<1;
        no[0] = xr;
        cnt <= cnt +1;
    end
  end
endmodule
            
