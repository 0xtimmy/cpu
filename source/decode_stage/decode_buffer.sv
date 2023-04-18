module decode_buffer(
    input logic clk,
    input logic rst,
    input logic halt,

    // input stage data
    input logic [0:63]  noperand_a,
    input logic [0:63]  noperand_b,
    input logic [0:7]   naluop,

    // input stage signals
    input logic         nregwrite;
    input logic         nwrite_addr;
    input logic         nmemwrite;
    input logic         nmemtoreg;
    input logic         nbranch;
    input logic         nsetflags;

    // output stage data
    output logic [0:63] operand_a,
    output logic [0:63] operand_b,
    output logic [0:7]  aluop,

    // output stage signals
    output logic        regwrite;
    output logic        write_addr;
    output logic        memwrite;
    output logic        memtoreg;
    output logic        branch;
    output logic        setflags;
);

always_ff @ (posedge clk) begin
    if(~halt) begin
        operand_a  <= noperand_a;
        operand_b  <= noperand_b;
        aluop      <= naluop;

        regwrite   <= nregwrite;
        write_addr <= nwrite_addr;
        memwrite   <= nmemwrite;
        memtoreg   <= nmemtoreg;
        branch     <= nbranch;
        setflags   <= nsetflags;
    end
end

endmodule