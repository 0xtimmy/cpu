import header::*;

module program_counter (
    input logic clk,
    input logic rst,
    input logic enable,
    input logic branch,
    input logic write_data,

    output logic pc,
);

reg [0:5] npc;

always_ff @ (posedge clk, negedge rst) begin
    if(~rst) begin
        pc = 6x00;
    end else begin
        pc = npc;
    end
end

always_comb begin
    npc = pc;
    if(enable) begin
        if(branch) npc = write_data;
        else npc = pc + 1;
    end
end
    
endmodule