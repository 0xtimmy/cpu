import header::*;

module alu (
    input logic [0:63] a,
    input logic [0:63] b,
    input opcode op,

    output logic [0:63] y
);
always_comb begin
    case(op)
        MOV: y = a;
        ADD: y = a + b;
        SUB: y = a - b;
        LDR: y = a;
        STR: y = b;
        B: y = a;
    endcase
end

endmodule