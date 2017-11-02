Bit#(1) start_bit = 0;
Bit#(1) stop_bit = 1;

typedef Bit#(8) Word;
typedef UInt#(TLog#(SizeOf#(Word))) BitCount;
Integer maxBitCount = valueOf(SizeOf#(Word)) - 1;


typedef enum {NONE, ODD, EVEN} Parity deriving (Bits, Eq);

typedef struct {
    Parity parity;
    UInt#(16) divider;
    // With UInt#(16), you can get as low as 4800 baud with a 200 MHz clock
    // For higher division factors, it is enough to change this type here.
    Bool two_stop_bits;
} Config deriving (Bits, Eq);

typedef struct {
    Bool parity_error;
    Bool overrun_error;
    Bool framing_error;
} Errors deriving (Bits, Eq);
