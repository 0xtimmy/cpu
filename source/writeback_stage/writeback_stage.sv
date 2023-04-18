module (
    input logic clk,
    input logic rst,
    
    // last stage data
    input logic [0:63] alu_result,
    input logic [0:63] operand_b,
    
    // last stage signals
    input logic memwrite,
    input logic memtoreg,

    // next stage data
    output logic write_data,

    // io
    input logic [0:63] mem_read_data,
    output logic [0:8] mem_address,
    output logic [0:63] mem_data,
    output logic mem_write_enable
);

assign mem_address = alu_result;
assign mem_data = operand_b;

assign write_data = memtoreg ? mem_read_data : alu_result;
assign mem_write_enable = memwrite;

endmodule

