module johnsoncounyter(output [3:0]q,q_bar,input clk,rst);  
    dff d1(q[0],q_bar[0],clk,q_bar[3],rst);
    dff d2(q[1],q_bar[1],clk,q[0],rst);
    dff d3(q[2],q_bar[2],clk,q[1],rst);
    dff d4(q[3],q_bar[3],clk,q[2],rst);
endmodule
    
