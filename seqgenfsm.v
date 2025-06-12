module sequencedetector( output reg detected, input clk, rst,in);

parameter S0 = 3'b000, 
          S1 = 3'b001,
          S2 = 3'b010, 
          S3 = 3'b011, 
          S4 = 3'b100; 

reg [2:0]state, next_state;

always @(posedge clk or posedge rst) begin
    if(rst)
        state <= S0;
    else
        state <= next_state;
end

always@(*) begin
    case (state)
        S0: if(in==1'b1) begin
              next_state = S1;
            end else begin
              next_state = S0; end
              
        S1:if(in==1'b0) begin
              next_state = S2;
            end else begin
              next_state = S1; end
              
        S2:if(in==1'b1) begin
              next_state = S3;
            end else begin
              next_state = S0; end
              
        S3:if(in==1'b1) begin
              next_state = S4;
            end else begin
              next_state = S2; end
              
        S4:if(in==1'b1) begin
              next_state = S1;
            end else begin
              next_state = S2; end
              
        default: next_state=S0;
    endcase
end

always@(*) begin
    if (state == S4)
        detected = 1'b1;
    else
        detected = 1'b0;
end

endmodule



            
    
