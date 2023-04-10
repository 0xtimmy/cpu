import header::*;

module decoder (
    input logic [0:63] instr,

    output opcode op,
    output logic [0:5] addr_a,
    output logic [0:5] addr_b,
    output logic [0:5] write_addr,
    output logic [0:63] immediate,
    output logic write_reg,
    output logic use_imm,
    output logic write_mem,
    output logic mem2reg,
    output logic branch
);

always_comb begin
    op = opcode'(instr[0:5]);
    write_addr = instr[6:10];
    addr_a = instr[11:15];
    addr_b = instr[16:20];
    immediate = {
        instr[32] ? ~32'b0 : 32'b0,
        instr[32:63]
    };

    write_reg = 1'b1;
    use_imm = 1'b0;
    write_mem = 1'b0;
    mem2reg = 1'b0;
    branch = 1'b0;

    case(op)
        LDR: begin
            mem2reg = 1'b1;
        end
        STR: begin
            write_mem = 1'b1;
            write_reg = 1'b0;
        end
        LDRI: begin
            mem2reg = 1'b1;
            use_imm = 1'b1;
        end
        STRI: begin
            write_mem = 1'b1;
            write_reg = 1'b0;
            use_imm = 1'b1;
        end
        B: begin
            branch = 1'b1;
            write_reg = 1'b0;
        end

    endcase
end
    
endmodule