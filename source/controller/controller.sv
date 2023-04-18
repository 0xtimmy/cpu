module controller(
    input logic [0:7] daddr_a,
    input logic [0:7] daddr_b,

    input logic eregwrite,
    input logic [0:7] ewrite_addr,
    input logic wregwrite,
    input logic [0:7] wwrite_addr,
    input logic regwrite,
    input logic [0:7] write_addr,

    // branching hazard
    input logic dbranch,
    input logic ebranch,
    input logic wbranch,
    input logic branch,

    output logic halt_fetch,
    output logic halt_decode,
    output logic halt_execution,
    output logic halt_writeback
);

    logic forwarding_detected;

    always_comb begin : forwarding_hazard_detector
        halt_execution = 1'b0;
        halt_writeback = 1'b0;

        forwarding_detected = (eregwrite & (ewrite_addr == addr_a | ewrite_addr == addr_b)) | 
                              (wregwrite & (wwrite_addr == addr_a | wwrite_addr == addr_b)) |
                              (regwrite & (write_addr == addr_a | write_addr == addr_b));
        
        branching_detected = dbranch | ebranch | wbranch | branch;

        halt_fetch = forwarding_detected | branching_detected;
        halt_decode = forwarding_detected;
    end

endmodule