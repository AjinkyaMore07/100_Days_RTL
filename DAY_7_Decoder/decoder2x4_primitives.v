module decoder2x4(
    input a,
    input b,
    input enable,
    output y0,
    output y1,
    output y2,
    output y3
);
  wire w1, w2;

  not g1(w1, a);
  not g2(w2, b);
  and g3(y0, w1, w2, enable);
  and g4(y1, w1, b, enable);
  and g5(y2, a, w2, enable);
  and g6(y3, a, b, enable);
endmodule
