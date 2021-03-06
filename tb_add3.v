//~ `New testbench
`include "add3.v " 
`timescale  1ns / 1ns
module tb_add3;
// add3 Parameters
parameter PERIOD  = 10;


// add3 Inputs
reg   [2:0]  a                             = 0 ;
reg   [2:0]  b                             = 0 ;
reg   cout                                 = 0 ;

// add3 Outputs
wire  [2:0]  c                             ;

add3  u_add3 (
    .a                       ( a     [2:0] ),
    .b                       ( b     [2:0] ),
    .cout                    ( cout        ),

    .c                       ( c     [2:0] )
);

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin

    #1000 $finish;
end
initial
begin

  $dumpfile("add3.vcd");       
   $dumpvars;    
end


endmodule
