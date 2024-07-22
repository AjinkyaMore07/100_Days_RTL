// Code your design here
module fulladder(input a,b,cin,output sum ,carry);
  assign {carry,sum} = a+b+cin;
endmodule

module mux(input [3:0]a,b,input sel,output [3:0]out);
  assign out = sel ? b : a;
endmodule


module carry_select_adder(input [3:0]a,b,input cin,output [3:0]sum ,output carry);
  
  wire [3:0]c0,c1 , temp0,temp1;
  fulladder unit1(a[0],b[0],0,temp0[0],c0[0]);
  fulladder unit2(a[1],b[1],c0[0],temp0[1],c0[1]);
  fulladder unit3(a[2],b[2],c0[1],temp0[2],c0[2]);
  fulladder unit4(a[3],b[3],c0[2],temp0[3],c0[3]);
  
  fulladder unit5(a[0],b[0],0,temp1[0],c1[0]);
  fulladder unit6(a[1],b[1],c1[0],temp1[1],c1[1]);
  fulladder unit7(a[2],b[2],c1[1],temp1[2],c1[2]);
  fulladder unit8(a[3],b[3],c1[2],temp1[3],c1[3]);
  
  mux unit9(temp0,temp1,cin,sum);
  assign carry = cin ? c1 : c0;
endmodule
