module MCU_tb;
// fpga4student.com: FPGA project, Verilog project, VHDL project 
// Verilog project: Verilog code for microcontroller
// Inputs
reg clk;
reg rst;
// Instantiate the Unit Under Test (UUT)
MicroController uut (
.clk(clk), 
.rst(rst)
);
initial begin
// Initialize Inputs
rst = 1;
// Wait 100 ns for global reset to finish
#100;
rst = 0;
end
initial begin 
clk = 0;
forever #10 clk = ~clk;
end 
endmodule 
