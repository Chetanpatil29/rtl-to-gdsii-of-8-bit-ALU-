module alu (
input clk ,
input rst , // synchronous reset ( active high )
input [7:0] a ,
input [7:0] b ,
input [3:0] sel ,
output reg [7:0] out ) ;
always @ ( posedge clk ) begin
if ( rst ) begin
out <= 8 ’ b00000000 ;
end
else begin
case ( sel )
4 ’ b0000 : out <= a + b ; // ADD
4 ’ b0001 : out <= a - b ; // SUB
4 ’ b0010 : out <= a & b ; // AND
4 ’ b0011 : out <= a | b ; // OR
4 ’ b0100 : out <= a ^ b ; // XOR
4 ’ b0101 : out <= ~ a ; // NOT A
4 ’ b0110 : out <= ~( a & b ) ; // NAND
4 ’ b0111 : out <= ~( a | b ) ; // NOR ( extra )
4 ’ b1000 : out <= a << 1; // SHIFT LEFT ( extra )
4 ’ b1001 : out <= a >> 1; // SHIFT RIGHT ( extra )
default : out <= 8 ’ b00000000 ;
endcase
end
end
endmodule
