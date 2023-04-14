module execution_buffer(
    input logic clk,
    input logic rst,

    // input stage data
    input logic [0:63]  nalu_result,
    input logic [0:63]  noperand_b,

    // input stage signals
    input logic         nregwrite,
    input logic         nwrite_addr,
    input logic         nmemwrite,
    input logic         nmemtoreg,
    input logic         nbranch
    input logic         nsetflags,
    input logic [0:3]   nflags,

    // output stage data
    output logic [0:63] alu_result,
    output logic [0:63] operand_b,

    // output stage signals
    output logic        regwrite,
    output logic        write_addr,
    output logic        memwrite,
    output logic        memtoreg,
    output logic        branch
    output logic        setflags,
    output logic [0:3]  flags,
);

always_ff @ (posedge clk) begin
    alu_result  <= nalu_result;
    operand_b   <= noperand_b;

    regwrite    <= nregwrite;
    write_addr  <= nwrite_addr;
    memwrite    <= nmemwrite;
    memtoreg    <= nmemtoreg;
    branch      <= nbranch;
    setflags    <= nsetflags;
    flags       <= nflags;
end

endmodule