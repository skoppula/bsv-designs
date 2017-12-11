typedef struct {
    Bit#(7)  x1;
    Bit#(8)  x1_star;
    Bit#(8)  x2;
    Bit#(9) x2_star;
} RNSNum deriving (Bits, Eq);
