module fetch_stage(
    input logic clk,
    input logic rst,
    input logic halt,

    // last stage data
    input logic [0:63] write_data
    
    // last stage signals
    input logic branch,

    // next stage data
    output logic [0:63] instruction;

    // io
    input logic [0:63] mem_read_data,
    output logic [0:8] mem_address,
);

reg [0:7] pc;
reg [0:7] npc;
reg [0:63] instruction;

assign mem_address = pc;
assign npc = halt ? pc : pc + (branch ? write_data : 4);

always @ (posedge clk, negedge rst) begin
    if(rst) begin
        pc <= 8'b0;
        instruction <= 64'b0;
    end else begin
        pc <= npc;
        instruction <= mem_read_data;
    end
end


endmodule