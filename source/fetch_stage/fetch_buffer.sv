`include "header.sv"
import header::*;

module fetch_buffer(
    input logic clk,
    input logic rst,
    input logic halt,
    
    //input stage data
    input logic [0:63] ninstruction,

    //output stage data
    output logic [0:63] instruction,
);

always_ff @ (posedge clk) begin
    if (~halt) begin 
        instruction <= ninstruction;
    end else begin
        instruction <= STALL_INSTRUCTION;
    end
end

endmodule