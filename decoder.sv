import header::*;

module decoder (
    logic [0:63] instr,

    output opcode op,
    output [0:7] addr_a,
    output [0:7] addr_b,
    output [0:7] write_addr,
    output write_reg,
    output write_mem,
    output reg2mem,
);
    
endmodule