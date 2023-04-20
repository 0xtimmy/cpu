import header::*;

module memory(
    input logic clk,
    input logic rst,
    input logic [0:7] addr,
    input logic [0:63] write_data,
    input logic write_enable,

    output logic [0:15][0:63] display,

    output reg [0:63] read_data
);

    reg [0:255][0:63] store;

    assign display = store[0:15]; 

    always_ff @ (posedge clk, negedge rst) begin
        if(~rst) begin
            store = '{default: 0};
        end else begin
            read_data <= store[addr];
            if(write_enable) store[addr] <= write_data;
        end
    end



endmodule