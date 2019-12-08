`timescale 1 ps / 100 fs
module MIPSStimulus();
// fpga4student.com: FPGA projects, Verilog Projects, VHDL projects
// Verilog project: 32-bit 5-stage Pipelined MIPS Processor in Verilog 
// Testbench Verilog code for 32-bit 5-stage Pipelined MIPS Processor 
parameter ClockDelay = 5000;

reg clk,reset;
wire [31:0] Register_s0;
wire [31:0] Register_s1;
wire [31:0] Register_s2;
wire [31:0] Register_s3;
wire [31:0] Register_s4;
wire [31:0] Register_s5;
wire [31:0] PC_out;
wire [31:0] Instruction_out;
wire [7:0] datamem16;
wire [7:0] datamem17;
wire [7:0] datamem18;
wire [7:0] datamem19;


MIPSpipeline  myMIPS(
    clk, reset,
    Register_s0,
    Register_s1,
    Register_s2,
    Register_s3,
    Register_s4,
    Register_s5, 
    PC_out,
    Instruction_out,
    datamem16,
    datamem17,
    datamem18,
    datamem19
);
initial clk = 0;
always #(ClockDelay/2) clk = ~clk;

initial 
begin
   reset = 1;
  #(ClockDelay/4);
  reset = 0;
end
endmodule