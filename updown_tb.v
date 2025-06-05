
module tb_counter;
 reg clk, rst, updown;
 wire [2:0] count;
 // Instantiate DUT
 updown_counter dut (
 .clk(clk),
 .rst(rst),
 .updown(updown),
 .count(count)
 );
 // Clock generation (100MHz)
initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 // Test sequence
 initial begin
 // Initialize signals
 rst = 1; updown = 1;
 #20 rst = 0;  // Release reset and enable counting
 // Test up-counting
 #100 updown = 0; // Switch to down-counting

 #50 $finish;
end
endmodule
