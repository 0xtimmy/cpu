`include "header.sv"
import header::*;

module decode_stage(
    input logic         clk,
    input logic         rst,

    // last stage inputs
    input logic [0:31]  instruction,

    // writeback data
    input logic [0:4]   writeback_writeaddr,
    input logic [0:63]  writeback_writedata,
    // writeback signals
    input logic         writeback_regwrite,
    input logic         writeback_setflags,
    input logic [0:3]   writeback_flags,

    // next stage data
    output logic [0:63] operand_a,
    output logic [0:63] operand_b,
    output logic [0:7]  aluop,

    // next stage signals
    output logic        regwrite;
    output logic        write_addr;
    output logic        memwrite;
    output logic        memtoreg;
    output logic        branch;
    output logic        setflags;
);

wire [0:4] addr_a;
wire [0:4] addr_b;
wire [0:4] addr_write;

wire [0:63] a_value;
wire [0:63] b_value;

wire use_imm;

assign operand_a = a_value;
assign operand_b = use_imm ? imm_sign_extended : operand_b;

decoder d(
    .instruction(instruction),
    .flags(writeback_flags),
    .op(aluop),
    .addr_a(addr_a),
    .addr_b(addr_b),
    .write_addr(addr_write),
    .regwrite(regwrite),
    .use_imm(use_imm),
    .immediate(immediate)
    .memwrite(memwrite),
    .memtoreg(memtoreg),
    .branch(branch),
    .setflags(setflags)
);

sign_extender se(
    .x(immediate),
    .y(imm_sign_extended),
);

registers r(
    .clk(clk),
    .rst(rst),
    .write_enable(writeback_regwrite),
    .write_data(writeback_writedata),
    .write_addr(writeback_writeaddr),
    .addr_a(addr_a),
    .addr_b(addr_b),
    .a(a_value),
    .b(b_value),

    .setflags(writeback_setflags),
    .flags(writeback_flags)
);


endmodule