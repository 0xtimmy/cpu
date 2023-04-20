module sign_extender(
    input [0:15] x,
    output [0:63] y,
);
    assign y = { x[15] ? ~48'b0 : 48'b0, x };
endmodule