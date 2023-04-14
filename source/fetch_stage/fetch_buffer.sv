module fetch_buffer(
    input logic clk,
    input logic rst,
    
    //input stage data
    input logic [0:63] ninstruction,

    //output stage data
    output logic [0:63] instruction,
);

always_ff @ (posedge clk) begin
    instruction <= ninstruction;
end

endmodule