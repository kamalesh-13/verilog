module csa(output cout, output [3:0]sum,input cin, input [3:0]a,b);
    wire [7:0]s,c;
      fulladder f0(s[0],c[0],a[0],b[0],0);
      fulladder f1(s[1],c[1],a[1],b[1],c[0]);
      fulladder f2(s[2],c[2],a[2],b[2],c[1]);
      fulladder f3(s[3],c[3],a[3],b[3],c[2]);
      
      fulladder f4(s[4],c[4],a[0],b[0],1);
      fulladder f5(s[5],c[5],a[1],b[1],c[4]);
      fulladder f6(s[6],c[6],a[2],b[2],c[5]);
      fulladder f7(s[7],c[7],a[3],b[3],c[6]);
      
      mux21 m0(sum[0],s[0],s[4],cin);
      mux21 m1(sum[1],s[1],s[5],cin);
      mux21 m2(sum[2],s[2],s[6],cin);
      mux21 m3(sum[3],s[3],s[7],cin);
      
      mux21 m4(cout,c[3],c[7],cin);
  endmodule
  
  
  

