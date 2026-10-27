module imem(
    input  logic [31:0] a,    // Address
    output logic [31:0] rd    // Instruction
);

    logic [31:0] RAM [0:63];   // 64 words of 32 bits

    initial $readmemh("imem.txt", RAM);   // load from a .txt file

    assign rd = RAM[a[7:2]];   // word index = a / 4, combinational read

endmodule
