module test;

  reg a, b;
  wire diff, borr;

  subtractor subtr_inst (
    .a(a),
    .b(b),
    .diff(diff),
    .borr(borr)
  );


  initial begin
    $dumpfile("sim.vcd");
    $dumpvars(0);
  end
  

  initial begin
    $monitor("TIME=%0t INPUT VALUES a=%b b=%b OUTPUT VALUES diff=%b borr=%b", $time, a, b, diff, borr);

    a = 0; b = 0;
    #10;
    a = 0; b = 1;
    #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1;
    #50 $finish;
  end

endmodule
