`include "header.sv"
import header::*;

module decoder (
    input logic [0:31] instr,
    input logic [0:3] flags,

    output opcode op,
    output logic [0:4] addr_a,
    output logic [0:4] addr_b,
    output logic [0:4] write_addr,
    output logic [0:15] immediate,
    output logic regwrite,
    output logic use_imm,
    output logic memwrite,
    output logic memtoreg,
    output logic branch,
    output logic setflags,
);

assign n_flag = flags[0];
assign z_flag = flags[1];
assign c_flag = flags[2];
assign v_flag = flags[3];

always_comb begin
    op = opcode'(instr[0:7]);
    write_addr = instr[8:11];
    addr_a = instr[12:15];
    addr_b = instr[16:19];
    immediate = instr[16:31];

    regwrite = 1'b1;
    use_imm = 1'b0;
    memwrite = 1'b0;
    memtoreg = 1'b0;
    branch = 1'b0;
    setflags = op == ADD | op == ADDI | op == SUB | op == SUBI | op == CMP | op = CMPI;

    case(op)
        STALL: begin
            regwrite = 1'b0;
            memwrite = 1'b0;
            memtoreg = 1'b0;
            branch = 1'b0;
        end
        //ADD: 
        ADDI: use_imm = 1'b1;
        //SUB:
        SUBI: use_imm = 1'b1;
        //MUL:
        MULI: use_imm = 1'b1;
        //DIV:
        DIVI: use_imm = 1'b1;
        //CMP:
        CMPI: use_imm = 1'b1;

        // Logical
        //NOT:
        //AND:
        ANDI: use_imm = 1'b1;
        //OR:
        ORI: use_imm = 1'b1;
        //XOR:
        XORI: use_imm = 1'b1;
        //LSL:
        LSLI: use_imm = 1'b1;
        //LSR:
        LSRI: use_imm = 1'b1;

        // Data Transfer
        //MOV:
        MOVI: use_imm = 1'b1;
        LDR: begin
            memtoreg = 1'b1;
            regwrite = 1'b0;
        end
        STR: begin
            memwrite = 1'b1;
        end

        // Branches & Jumps
        B: begin
            branch = 1'b1;
            use_imm = 1'b1;
        end
        BR: branch = 1'b1;
        BEQ: begin
            branch = z_flag;
            use_imm = 1'b1;
        end
        BREQ: branch = z_flag;
        BNE: begin
            branch = ~z_flag;
            use_imm = 1'b1;
        end
        BRNE: ~z;
        BGT: begin
            branch = ~n_flag & ~z_flag;
            use_imm = 1'b1;
        end
        BRGT: branch = ~n_flag & ~z_flag;
        BGE: begin
            branch = ~n_flag | z_flag;
            use_imm = 1'b1;
        end
        BRGE: branch = ~n_flag;
        BLT: begin
            branch = n_flag & ~z_flag;
            use_imm = 1'b1;
        end
        BRLT: branch = n_flag & ~z_flag;
        BLE: begin
            branch = n_flag | z_flag;
            use_imm = 1'b1;
        end
        BRLE: branch = n_flag | z_flag;

    endcase
end
    
endmodule