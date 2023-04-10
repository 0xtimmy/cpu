module io_bus (
    input logic clk,
    input logic rst,
    input logic [0:8] addr,
    input logic [0:63] write_data,
    input logic write_enable,

    output reg [0:63] read_data,

    input reg [0:255][0:63] ex_data
);

wire [0:63] mem_result;
wire [0:63] ex_result;

assign write_mem = write_enable & addr[8];
assign read_data = addr[8] ? mem_result : ex_result;

assign ex_result = ex_data[addr[0:7]];

memory mem(
        .clk(clk),
        .rst(rst),
        .addr(addr[0:7]),
        .write_data(operand_b),
        .write_enable(write_mem),
        .read_data(mem_result)
    );

endmodule