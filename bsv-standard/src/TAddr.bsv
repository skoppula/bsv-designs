import NumberTypes::*;

typedef BuffIndex#(TMax#(1, TLog#(nDepth)), nDepth) TAddr#(numeric type nDepth);

instance SizedLiteral#(BuffIndex#(n,m), n);
   function fromSizedInteger(i) = BuffIndex {bix: unpack(i) };
endinstance

instance Bounded#(BuffIndex#(n, m));
    minBound = BuffIndex {bix: 0};
    maxBound = BuffIndex {bix: fromInteger(valueOf(m)-1)};
endinstance
