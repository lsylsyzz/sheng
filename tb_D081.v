//~ `New testbench
`include "D081.v " 
`timescale  1ns / 1ns
module tb_D081;
// D081 Parameters
parameter PERIOD  = 10;


// D081 Inputs
reg   clk                                  = 0 ;
reg   reset                                = 0 ;
reg   [7:0]  d                             = 0 ;

// D081 Outputs
wire  [7:0]  q                             ;

D081  u_D081 (
    .clk                     ( clk          ),
    .reset                   ( reset        ),
    .d                       ( d      [7:0] ),

    .q                       ( q      [7:0] )
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

  $dumpfile("D081.vcd");       
   $dumpvars;    
end


endmodule
