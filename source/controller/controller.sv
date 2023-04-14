module controller(

);

/** forwarding
 *  detection: if command in execution stage depends on a value that is being written
 *    regwrite & (write_addr == addr_a | write_addr == addr_b)
 *  handling:  stall execution until write data has wrapped around
**/

/** jump
 *  detection: if branching
 *    branch
 *  handling: if conditional branching wait for flags, wait for pc before continuing also
**/

/** memeory hazard
 *  detection: if reading from memory that has recently been written to
 *    memtoreg & writereg
 *  handling: wait until the write has been completed
**/

endmodule