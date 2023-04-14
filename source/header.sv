package header;
    typedef enum logic [0:7] {
        ADD: 7'h0,
        ADDI: 7'h1,
        SUB: 7'h2,
        SUBI: 7'h3,
        MUL: 7'h4,
        MULI: 7'h5,
        DIV: 7'h6,
        DIVI: 7'h7,
        CMP: 7'h8,
        CMPI: 7'h9,

        // Logical
        NOT: 7'hA,
        AND: 7'hB,
        ANDI: 7'hC,
        OR: 7'hD,
        ORI: 7'hE,
        XOR: 7'hF,
        XORI: 7'h10,
        LSL: 7'h11,
        LSLI: 7'h12,
        LSR: 7'h13,
        LSRI: 7'h14,

        // Data Transfer
        MOV: 7'h15,
        MOVI: 7'h16,
        LDR: 7'h17,
        STR: 7'h18,

        // Branches & Jumps
        B: 7'h19,
        BR: 7'h1A,
        BEQ: 7'h1B,
        BREQ: 7'h1C,
        BNE: 7'h1D,
        BRNE: 7'h1E,
        BGT: 7'h1F,
        BRGT: 7'h20,
        BGE: 7'h21,
        BRGE: 7'h22,
        BLT: 7'h23,
        BRLT: 7'h24,
        BLE: 7'h25,
        BRLE: 7'h26,
    } opcode;

    typedef enum logic [0:5] {
        ADD: ,
        SUB,
        MUL,
        DIV,
        CMP,
        NOT,
        AND,
        OR,
        XOR,
        LSL,
        LSR,
        MOV,
        LDR,
        STR,
        B,
        BR,
    } aluop;
    
endpackage