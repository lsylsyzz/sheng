module kar(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    assign out =(~b&~c)|(~a&~d)|(c&d&a)|(c&d&b);
endmodule