//~ `New testbench
`include "declaration.v " 
`timescale  1ns / 1ns
module tb_top_module;
// top_module Parameters
parameter PERIOD  = 10;


// top_module Inputs
reg   a                                    = 0 ;
reg   b                                    = 0 ;
reg   c                                    = 0 ;
reg   d                                    = 0 ;

// top_module Outputs
wire  out                                  ;

top_module  u_top_module (
    .a                       ( a     ),
    .b                       ( b     ),
    .c                       ( c     ),
    .d                       ( d     ),

    .out                     ( out   )
);



initial
begin
    #10 a=0;b=0;c=0;d=0;
    #10 a=1;b=0;c=0;d=0;
    #10 a=1;b=1;c=0;d=0;
    #10 a=0;b=1;c=0;d=0;

    #10 a=0;b=0;c=1;d=0;
    #10 a=0;b=1;c=1;d=0;
    #10 a=1;b=1;c=1;d=0;
    #10 a=1;b=0;c=1;d=0;

    #10 a=0;b=0;c=1;d=1;
    #10 a=0;b=1;c=1;d=1;
    #10 a=1;b=0;c=1;d=1;
    #10 a=1;b=1;c=1;d=1;



    #10 a=0;b=0;c=0;d=1;
    #10 a=1;b=0;c=0;d=1;
    #10 a=0;b=1;c=0;d=1;
    #10 a=1;b=1;c=0;d=1;

    #200 $finish;
end
initial
begin

  $dumpfile("top_module.vcd");       
   $dumpvars;    
end


endmodule
