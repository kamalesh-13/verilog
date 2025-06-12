module jkff(output reg q, q_bar, input j,k,clk,rst);
    always@(posedge clk or posedge rst) begin
      if(rst==1) begin
          q<=1'b1;
          q_bar=~q;
      end else begin
          case({j,k})
              2'b00: begin q<=q; q_bar<=q_bar; end
              2'b10: begin q<=0; q_bar<=1; end
              2'b01: begin q<=1; q_bar<=0; end
              2'b11: begin q<=q_bar; q_bar<=q; end
      endcase
  end
  end
  endmodule
  
