import header::*;

module alu (
    input logic [0:63] a,
    input logic [0:63] b,
    input opcode op,

    output logic [0:63] y,
    output logic n_flag,
    output logic z_flag,
    output logic c_flag,
    output logic v_flag,
);
always_comb begin
    case(op)
        // Arithmetic
        ADD: y = a + b;
        ADDI: y = a + b;
        SUB: y = a - b;
        SUBI: y = a - b;
        MUL: y = a * b;
        DIV: y = a / b;
        CMP: y = a - b;
        CMPI: y = a -b;

        // Logical
        NOT: y = ~a;
        AND: y = a & b;
        ANDI: y = a & b;
        OR: y = a | b;
        ORI: y = a | b;
        XOR: y = a ^ b;
        XORI: y = a ^ b;
        LSL: y = a << b;
        LSR: y = a >> b;

        // Data Transfer
        MOV: y = a;
        LDR: y = a;
        STR: y = b;

        // Branches & Jumps
        B: y = b;
        BL: y = b;  // L & R are just options for each branch
        BEQ: y = b;
        BNE: y = b;
        BGT: y = b;
        BGE: y = b;
        BLT: y = b;
        BLE: y = b;
        BR: y = a;
        BRL: y = a;
        BREQ: y = a;
        BRNE: y = a;
        BRGT: y = a;
        BRGE: y = a;
        BRLT: y = a;
        BRLE: y = a;

        //
    endcase
end

endmodule