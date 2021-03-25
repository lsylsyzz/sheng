//~ `New testbench
`include "top_module.v " 
`timescale  1ns / 1ns
module tb_top_module;
// top_module Parameters
parameter PERIOD  = 10;


// top_module Inputs
reg   a                                    = 0 ;
reg   b                                    = 0 ;
reg   cin                                  = 0 ;

// top_module Outputs
wire  cout                                 ;
wire  sum                                  ;

top_module  u_top_module (
    .a                       ( a      ),
    .b                       ( b      ),
    .cin                     ( cin    ),

    .cout                    ( cout   ),
    .sum                     ( sum    )
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

  $dumpfile("top_module.vcd");       
   $dumpvars;    
end


endmodule
