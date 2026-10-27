module mux3 #(parameter WIDTH = 8)(
    input  logic [WIDTH-1:0] d0,   // Input 0
    input  logic [WIDTH-1:0] d1,   // Input 1
    input  logic [WIDTH-1:0] d2,   // Input 2
    input  logic [1:0]       s,    // 2-bit select line
    output logic [WIDTH-1:0] y     // Output
);

    assign y = s[1] ? d2 : (s[0] ? d1 : d0);

endmodule
