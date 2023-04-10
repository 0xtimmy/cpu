package header;
    typedef enum logic [0:5] {
        MOV=6'h0
        ADD=6'h1,
        SUB=6'h2,
        LDR=6'h3,
        STR=6'h4,
        B=6'h5
    } opcode;
    
endpackage