import header::*

module alu (
    input [0:63] a,
    input [0:63] b,
    input opcode op,

    output y
);

case(op)
    MOV: y = a;
    ADD: y = a + b;
    SUB: y = a - b;
    LDR: y = a;
    STR: y = a;
    B: y = a
endcase

endmodule