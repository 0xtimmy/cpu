module sign_extender(
    input [0:31] x,
    output [0:63] y,
);
    assign y = { x[31] ? ~32'b0 : 32'b0, x };
endmodule