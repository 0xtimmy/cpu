package header;

    enum logic [0:31] { STALL, 4'b0, 4'b0, 4'b0,  12'b0 } STALL_INSTRUCTION; 

    enum logic [0:3] 4'hf XZR;

    typedef enum logic [0:7] {
        STALL: 8'h7F,
        ADD: 8'h0,
        ADDI: 8'h1,
        SUB: 8'h2,
        SUBI: 8'h3,
        MUL: 8'h4,
        MULI: 8'h5,
        DIV: 8'h6,
        DIVI: 8'h7,
        CMP: 8'h8,
        CMPI: 8'h9,

        // Logical
        NOT: 8'hA,
        AND: 8'hB,
        ANDI: 8'hC,
        OR: 8'hD,
        ORI: 8'hE,
        XOR: 8'hF,
        XORI: 8'h10,
        LSL: 8'h11,
        LSLI: 8'h12,
        LSR: 8'h13,
        LSRI: 8'h14,

        // Data Transfer
        MOV: 8'h15,
        MOVI: 8'h16,
        LDR: 8'h17,
        STR: 8'h18,

        // Branches & Jumps
        B: 8'h19,
        BR: 8'h1A,
        BEQ: 8'h1B,
        BREQ: 8'h1C,
        BNE: 8'h1D,
        BRNE: 8'h1E,
        BGT: 8'h1F,
        BRGT: 8'h20,
        BGE: 8'h21,
        BRGE: 8'h22,
        BLT: 8'h23,
        BRLT: 8'h24,
        BLE: 8'h25,
        BRLE: 8'h26,
    } opcode;
    
endpackage