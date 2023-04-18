module writeback_buffer(
    input logic         clk,
    input logic         rst,
    input logic         halt,

    // input stage data
    input [0:63]        nwrite_data,

    // input stage signals
    input logic         nregwrite,
    input logic         nwrite_addr,
    input logic         nbranch
    input logic         nsetflags,
    input logic [0:3]   nflags,

    // output stage data
    output [0:63]       write_data,

    // output stage signals
    output logic        regwrite,
    output logic        write_addr,
    output logic        branch
    output logic        setflags,
    output logic [0:3]  flags
);

always_ff @ (posedge clk) begin
    if(~halt) begin
        write_data <= nwrite_data;
        regwrite <= nregwrite;
        write_addr <= nwrite_addr;
        branch <= nbranch;
        setflags <= nsetflags;
        flags <= nsetflags;
    end
end

endmodule