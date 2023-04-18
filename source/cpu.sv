`include "header.sv"
import header::*;

module cpu (
    input logic clk,
    input logic rst,
    
    output data_address,
    output data_write_enable,
    output data_io_wdata,
    input data_io_rdata,
    output instr_address,
    input instr_io_rdata
);

    // fetch stage
    wire [0:63] finstruction;
    wire [0:63] dinstruction;

    // decode stage
    wire [0:63] doperand_a;
    wire [0:63] doperand_b;
    wire [0:7] daluop;

    wire dregwrite;
    wire dwrite_addr;
    wire dmemwrite;
    wire dmemtoreg;
    wire dbranch;
    wire dsetflags;

    // execution stage
    wire [0:63] eoperand_a;
    wire [0:63] eoperand_b;
    wire [0:7] ealuop;

    wire eregwrite;
    wire ewrite_addr;
    wire ememwrite;
    wire ememtoreg;
    wire ebranch;
    wire esetflags;

    wire [0:63] ealu_result;
    wire [0:3] eflags;

    // writeback stage
    wire [0:63] walu_result;
    wire [0:63] woperand_b;

    wire wregwrite;
    wire wwrite_addr;
    wire wmemwrite;
    wire wmemtoreg;
    wire wbranch;
    wire wsetflags;
    wire [0:3] wflags;

    // write signals
    wire write_addr;
    wire write_data;
    wire regwrite;
    wire branch;
    wire setflags;
    wire [0:3] flags;

    controller c(
        // forwarding hazard
        daddr_a,
        daddr_b,

        eregwrite,
        ewrite_addr,
        wregwrite,
        wwrite_addr,
        regwrite,
        write_addr,

        // branching hazard
        dbranch,
        ebranch,
        wbranch,
        branch,

        halt_fetch,
        halt_decode,
        halt_execution,
        halt_writeback
    );
    
    fetch_stage fs(
        .clk(clk),
        .rst(rst),
        .halt(halt_fetch),

        .write_data(write_data),
        .branch(branch),

        .instruction(finstruction),

        .mem_read_data(instr_io_rdata),
        .mem_address(instr_address)
    );

    fetch_buffer fb(
        .clk(clk),
        .rst(rst),
        .halt(halt_fetch),
        .ninstruction(finstruction),
        .instruction(dinstruction)
    );

    decode_stage ds(
        .clk(clk),
        .rst(rst),

        .instruction(dinstruction),

        .writeback_addr(write_addr),
        .writeback_writedata(write_data),

        .writeback_regwrite(regwrite),
        .writebacl_setflags(setflags),
        .writeback_flags(flags),

        .operand_a(doperand_a),
        .operand_b(doperand_b),
        .aluop(daluop),

        .regwrite(dregwrite),
        .write_addr(dwrite_addr),
        .memwrite(dmemwrite),
        .memtoreg(dmemtoreg),
        .branch(dbranch),
        .setflags(dsetflags)
    );

    decode_buffer db(
        .clk(clk),
        .rst(rst),
        .halt(halt_decode),

        .noperand_a(doperand_a),
        .noperand_b(doperand_b),
        .naluop(daluop),

        .nregwrite(dregwrite),
        .nwrite_addr(dwrite_addr),
        .nmemwrite(dmemwrite),
        .nmemtoreg(dmemtoreg),
        .nbranch(dbranch),
        .nsetflags(dsetflags),

        .operand_a(eoperand_a),
        .operand_b(eoperand_b),
        .aluop(ealuop),

        .regwrite(eregwrite),
        .write_addr(ewrite_addr),
        .memwrite(ememwrite),
        .memtoreg(ememtoreg),
        .branch(ebranch),
        .setflags(esetflags)
    );

    execution_stage es(
        .operand_a(eoperand_a),
        .operand_b(eoperand_b),
        .aluop(ealuop),

        .alu_result(ealu_result),
        .flags(eflags)
    );

    execution_buffer eb(
        .clk(clk),
        .rst(rst),
        .halt(halt_execution),

        .nalu_result(ealu_result),
        .noperand_b(eoperand_b),

        .nregwrite(eregwrite),
        .nwrite_addr(ewrite_addr),
        .nmemwrite(ememwrite),
        .nmemtoreg(ememtoreg),
        .nbranch(ebranch),
        .nsetflags(esetflags),
        .nflags(eflags),

        .alu_result(walu_result),
        .operand_b(woperand_b),

        .regwrite(wregwrite),
        .write_addr(wwrite_addr),
        .memwrite(wmemwrite),
        .memtoreg(wmemtoreg),
        .branch(wbranch),
        .setflags(wsetflags),
        .flags(wflags)
    );

    writeback_stage ws(
        .clk(clk),
        .rst(rst),

        .alu_result(walu_result),
        .operand_b(woperand_b),

        .memwrite(wmemwrite),
        .memtoreg(wmemtoreg),

        .write_data(wwrite_data),

        // io
        .mem_read_data(data_io_rdata),
        .mem_address(data_address),
        .mem_data(data_io_wdata),
        .mem_write_enable(data_write_enable)
    );

    writeback_buffer wb(
        .clk(clk),
        .rst(rst),
        .halt(halt_writeback),

        .nwrite_data(wwrite_data),
        .nregwrite(wregwrite),
        .nwrite_addr(wwrite_addr),
        .nbranch(wbranch),
        .nsetflags(wsetflags),
        .nflags(wflags),

        .write_data(write_data),
        .regwrite(regwrite),
        .write_addr(write_addr),
        .branch(branch),
        .setflags(setflags),
        .flags(flags)
    );


endmodule