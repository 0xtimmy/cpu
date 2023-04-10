`include "header.sv"
`timescale 1ns/10ps

import header::*;

module tb_cpu();

// System Parameters
localparam CLK_PERIOD = 10ns;
localparam PROGRAM_START = 8'h0;
localparam DATA_START = 8'hff;

// Performance Evaluations
integer total_clk_cycles = 0;

// System Signals
logic tb_clk;
logic tb_rst;
logic [0:7] tb_data_ptr;
logic [0:7] tb_program_ptr;

// Memory
reg [0:255][0:63] tb_external;
reg [0:7][0:63] tb_important_regs;

always begin : CLK_GEN
    total_clk_cycles = total_clk_cycles + 1;
    tb_clk = 1'b0;
    #(CLK_PERIOD / 2.0);
    tb_clk = 1'b1;
	#(CLK_PERIOD / 2.0);
end

cpu p(tb_clk, tb_rst, tb_external);

task load_simple_calc;
begin
    // Load value a
    tb_external[tb_program_ptr] = { LDRI, 5'h0, 21'b0, tb_data_ptr };
    tb_program_ptr = tb_program_ptr + 1;
    tb_external[tb_data_ptr] = 64'h0f;
    tb_data_ptr = tb_data_ptr - 1;

    // load value b
    tb_external[tb_program_ptr] = { LDRI, 5'h1, 21'b0, tb_data_ptr };
    tb_program_ptr = tb_program_ptr + 1;
    tb_external[tb_data_ptr] = 64'hf0;
    tb_data_ptr = tb_data_ptr - 1;

    // sum them
    tb_external[tb_program_ptr] = { ADD, 5'h2, 5'h0, 5'h1, 43'b0 };
    tb_program_ptr = tb_program_ptr + 1;

    // store the result
    tb_external[tb_program_ptr] = { STRI, 5'h0, 5'h2, 16'h0, tb_data_ptr };
    tb_program_ptr = tb_program_ptr + 1;
end
endtask

initial begin
    tb_data_ptr = DATA_START;
    tb_program_ptr = PROGRAM_START;
    tb_rst = 1'b1;
    load_simple_calc();
    
end

endmodule