module cpu_register (
    input logic clk,
    input wire rst,
    input logic write_enable,
    input logic [0:63] write_data,
    input logic [0:4] write_addr,
    input logic [0:4] addr_a,
    input logic [0:4] addr_b,

    output reg [0:63] a,
    output reg [0:63] b,

    input logic setflags,
    input reg [0:3] flags
);


    reg [0:31][0:63] store;

    logic canwrite;

    always_comb begin
        canwrite = write_enable & 
                    write_addr != 30; //flags
    end

    always_ff @( posedge clk, negedge rst ) begin
        a <= store[addr_a];
        b <= store[addr_b];
        if(~rst) begin
            store = '{default: 0};
        end else begin
            store[write_addr] <= canwrite ? write_data : store[write_addr];
            store[30] <= flags;
        end 
    end
    
endmodule