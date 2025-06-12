module onecomp(output reg gt,lt,eq, input a,b,gt_p,lt_p,eq_p);
    reg gt_t,lt_t,eq_t;
    always@(*) begin
        if(a==b) begin
            gt_t=0;eq_t=1;lt_t=0;
        end else if(a>b) begin
            gt_t=1;eq_t=0;lt_t=0;
        end else begin
            gt_t=0;eq_t=0;lt_t=1;
        end
     gt = gt_p|(eq_p&gt_t);
     lt = lt_p|(eq_p&lt_t);
     eq = (eq_p&eq_t);
end
endmodule

