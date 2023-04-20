`include "header.sv"
`timescale 1ns/10ps

import header::*;

module tb_cpu();

// System Parameters
localparam CLK_PERIOD = 10ns;
localparam PROGRAM_START = 8'h0;
localparam DATA_START = 8'hff;

// Performance Evaluations
integer total_clk_cycles;

// System Signals
logic tb_clk;
logic tb_rst;

// Memory
logic [0:255][0:31] tb_program_memory; 
logic [0:16][0:63] tb_display;

always begin : CLK_GEN
    total_clk_cycles = total_clk_cycles + 1;
    tb_clk = 1'b0;
    #(CLK_PERIOD / 2.0);
    tb_clk = 1'b1;
	#(CLK_PERIOD / 2.0);
end

cpu p(
    .clk(tb_clk), 
    .rst(tb_rst), 
    .data_address(data_address),
    .data_write_enable(data_write_enable),
    .data_io_wdata(data_io_wdata),
    .data_io_rdata(data_io_rdata),
    .instr_address(instr_address),
    .instr_io_rdata(instr_io_rdata)
);

io_bus io_bus(
    .address_a(data_address),
    .write_enable_a(data_write_enable),
    .rdata_a(data_io_rdata),
    .wdata_a(data_io_wdata),
    .address_b(instr_address),
    .write_enable_b(1'b0),
    .rdata_b(instr_io_rdata),

    .display(tb_display),
    .program_mem(tb_program_memory)
)

task load_simple_calc;
    /** 
     *  instruction schema = { 
     *      [0:7]:      opcode
     *      [8:11]:     write adress
     *      [12:15]:    operand address a
     *      [16:19]:    operand address b
     *      [16:31]:    immediate
    **/
    tb_program_memory = '{ default: STALL_INSTRUCTION };
    tb_program_memory[0] = { MOVI, 4'h0, 4'h0, 16'h000C }; // mov number into x0
    tb_program_memory[1] = { MOVI, 4'h1, 4'h0, 16'h000C }; // mov number into x1
    tb_program_memory[2] = { ADD, 4'h2, 4'h0, 4'h1, 12'h0 }; // add x2 = x1 + x0
    tb_program_memory[3] = { STR, 4'h0, XZR, 4'h2, 12'h0 }; // str x2, [#0] 
begin
    
end
endtask

initial begin
    // Initialize Test Bench Variables
    tb_rst = 1'b1;
    total_clk_cycles = 0;

    #(2*CLK_PERIOD);

    // Load Program -----------------------------------------------------------
    tb_rst = 1'b0;

    load_simple_calc();
    #(2*CLK_PERIOD);

    tb_rst = 1'b1;
    total_clk_cycles = 0;

    // Program Run
    
end

endmodule