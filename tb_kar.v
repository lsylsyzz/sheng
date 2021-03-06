//~ `New testbench
`include "kar.v " 
`timescale  1ns / 1ns
module tb_kar;
// kar Parameters
parameter PERIOD  = 10;


// kar Inputs
reg   a                                    = 0 ;
reg   b                                    = 0 ;
reg   c                                    = 0 ;
reg   d                                    = 0 ;

// kar Outputs
wire  out                                  ;

kar  u_kar (
    .a                       ( a     ),
    .b                       ( b     ),
    .c                       ( c     ),
    .d                       ( d     ),

    .out                     ( out   )
);



initial
begin

    #1000 $finish;
end
initial
begin

  $dumpfile("kar.vcd");       
   $dumpvars;    
end

endmodule
