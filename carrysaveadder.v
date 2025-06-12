module carrysavadd(output cout, [4:0]s, input [3:0] a,b,c);
    wire [3:0] sl,cl,ct;
    fulladder f0(s[0],cl[0],a[0],b[0],c[0]);
    fulladder f1(sl[1],cl[1],a[1],b[1],c[1]);
    fulladder f2(sl[2],cl[2],a[2],b[2],c[2]);
    fulladder f3(sl[3],cl[3],a[3],b[3],c[3]);
    
    fulladder f4(s[1],ct[0],sl[1],cl[0],0);
    fulladder f5(s[2],ct[1],sl[2],cl[1],ct[0]);
    fulladder f6(s[3],ct[2],sl[3],cl[2],ct[1]);
    fulladder f7(s[4],cout,0,cl[3],ct[2]);
    
endmodule

