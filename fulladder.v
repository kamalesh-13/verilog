module fulladder(output sum,c, input a,b,cin);
   assign sum = a^b^cin;
   assign c = (a&b)|(cin &(a^b));
endmodule 


