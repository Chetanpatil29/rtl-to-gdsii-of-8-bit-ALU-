`timescale 1ns/1ps

module alu_tb;

    // Inputs
    reg clk;
    reg rst;
    reg [7:0] a;
    reg [7:0] b;
    reg [3:0] sel;

    // Output
    wire [7:0] out;

    // Instantiate DUT
    alu uut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );

    // Clock Generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test Sequence
    initial begin

        // Initialize Inputs
        rst = 1;
        a   = 8'd0;
        b   = 8'd0;
        sel = 4'b0000;

        #10;
        rst = 0;

        // ADD
        a = 8'd20;
        b = 8'd10;
        sel = 4'b0000;
        #10;

        // SUB
        sel = 4'b0001;
        #10;

        // AND
        sel = 4'b0010;
        #10;

        // OR
        sel = 4'b0011;
        #10;

        // XOR
        sel = 4'b0100;
        #10;

        // NOT A
        sel = 4'b0101;
        #10;

        // NAND
        sel = 4'b0110;
        #10;

        // NOR
        sel = 4'b0111;
        #10;

        // SHIFT LEFT
        sel = 4'b1000;
        #10;

        // SHIFT RIGHT
        sel = 4'b1001;
        #10;

        // Invalid Selection
        sel = 4'b1111;
        #10;

        $finish;

    end

    // Monitor Signals
    initial begin
        $monitor("Time=%0t | rst=%b | sel=%b | a=%d | b=%d | out=%d",
                 $time, rst, sel, a, b, out);
    end

endmodule
