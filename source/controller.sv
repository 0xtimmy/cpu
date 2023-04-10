import header::*;

module controller (
    input logic clk,
    input logic rst,
    output logic instr_phase
);

typedef enum logic[0:7] { INSTR=8'h0, DATA=8'h1 } state;

state s;
state ns;

always_ff @ (posedge clk, negedge rst) begin
    if(~rst) begin
        s = INSTR;
    end else begin
        s = ns;
    end
end

always_comb begin
    instr_phase = 1'b0;
    
    case(s)
        INSTR: begin
            ns = DATA;
            instr_phase = 1'b1;
        end
        DATA: begin
            ns = INSTR;
        end
    endcase
end
    
endmodule