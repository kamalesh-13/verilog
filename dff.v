module dff( output reg q,q_bar, input clk,din,rst);
    always@(negedge clk) begin
        if(rst) begin
            q<=0;
            q_bar<=1;
        end else begin
            q<=din;
            q_bar<=~q;
        end
    end
endmodule
    
