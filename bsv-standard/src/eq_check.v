module eq_check (x1, x2, eq);
    parameter DSZ = 1;
    input [DSZ-1:0] x1;
    input [DSZ-1:0] x2;
    output eq;

    assign eq = (x1 === x2);
endmodule
