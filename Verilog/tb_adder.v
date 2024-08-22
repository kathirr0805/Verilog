module tb_behave;
   reg [1:0] a, b;

   // Instantiate the module "behave"
   behave uut (
      .a(a),
      .b(b)
   );

   // Stimulus process
   initial begin
      // Initialize a and b
      a = 2'b1;
      b = 2'b0;

      // Display initial values
      $display("Initial Values - a: %b, b: %b", a, b);

      // Apply stimulus
      #50 a = ~a;
      #100 b = ~b;
      #50 a = ~a;
      #100 b = ~b;

      // Display final values
      $display("Final Values - a: %b, b: %b", a, b);

      // End simulation
      $finish;
   end

endmodule
