module io_bus (
    input logic clk,
    input logic rst,

    input logic [0:8] address_a,
    input logic write_enable_a,
    input logic [0:63] wdata_a,
    output reg [0:63] rdata_a,

    input logic [0:8] address_b,
    input logic write_enable_b,
    input logic [0:63] wdata_b,
    output reg [0:63] rdata_b,

    output reg [0:15][0:63] display,
    input reg [0:255][0:63] program_mem
);

always_ff @ (posedge clk, negedge rst) begin
    rdata_b <= program_mem[address_b];
end

memory mem(
        .clk(clk),
        .rst(rst),
        .addr(address_a),
        .write_data(wdata_a),
        .write_enable(write_enable_a),
        .read_data(rdata_a),
        display(display)
    );

endmodule