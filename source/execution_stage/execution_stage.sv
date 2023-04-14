module execution_stage(
    // last stage data
    input logic [0:63] operand_a,
    input logic [0:63] operand_b,
    input logic [0:7]  aluop,

    // next stage data
    output logic [0:63] alu_result,

    //next stage signals
    output logic [0:3] flags
);

alu dp(
    .a(operand_a),
    .b(operand_b),
    .op(aluop),
    .y(alu_result),
    .n_flag(flags[0]),
    .z_flag(flags[1]),
    .c_flag(flags[2]),
    .v_flag(flags[3])
);


endmodule