module D081 (clk,
             reset,     // Synchronous reset
              d,
              q );

              input clk ,reset;
              input [7:0]d;
              output [7:0] q;
           reg q;
           
    always @ (posedge clk)
    begin
        if (reset !=  0)
        begin
            q <= d;
        end
        else
           q <= 0;
    end
    
endmodule
