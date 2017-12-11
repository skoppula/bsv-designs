import Standard::*;
import RNSNum::*;

typedef Server#(T2#(UInt#(32), UInt#(32)), UInt#(32)) Compare;

module mkCompare(Compare);
  let a <- mkLFIFO;
  let b <- mkLFIFO;
  let c <- mkLFIFO;

  rule add;
    c.enq(compare(a.first, b.first));
    a.deq; b.deq;
  endrule

  interface Put request;
    method Action put(Tuple2#(UInt#(32), UInt#(32)) x);
      match {.a_, .b_} = x;
      a.enq(a_);
      b.enq(b_);
    endmethod
  endinterface

  interface Get response = toGet(c);
endmodule

(* synthesize *)
module mkCompareRNS(Compare);
  (* hide *)
  let m <- mkCompare;
  return m;
endmodule


function Bit#(7) add_mod_n7(Bit#(7) a, Bit#(7) b);
   UInt#(8) atmp = zeroExtend(unpack(a));
   UInt#(8) btmp = zeroExtend(unpack(b));
   return pack((atmp + btmp) % 127)[6:0];
endfunction

function Bit#(8) add_mod_n7_plus1(Bit#(8) a, Bit#(8) b);
   UInt#(9) atmp = zeroExtend(unpack(a));
   UInt#(9) btmp = zeroExtend(unpack(b));
   return pack((atmp + btmp) % 129)[7:0];
endfunction

function Bit#(8) add_mod_n8(Bit#(8) a, Bit#(8) b);
   UInt#(9) atmp = zeroExtend(unpack(a));
   UInt#(9) btmp = zeroExtend(unpack(b));
   return pack((atmp + btmp) % 255)[7:0];
endfunction

function Bit#(9) add_mod_n8_plus1(Bit#(9) a, Bit#(9) b);
   UInt#(10) atmp = zeroExtend(unpack(a));
   UInt#(10) btmp = zeroExtend(unpack(b));
   return pack((atmp + btmp) % 257)[8:0];
endfunction

function Bit#(14) add_mod_n14(Bit#(14) a, Bit#(16) b);
   UInt#(17) atmp = zeroExtend(unpack(a));
   UInt#(17) btmp = zeroExtend(unpack(b));
   return pack((atmp + btmp) % 16383)[13:0];
endfunction

function Bit#(8) add_n8(UInt#(8) a, UInt#(8) b);
   return pack(a + b);
endfunction

function Bit#(9) add_n9(UInt#(9) a, UInt#(9) b);
   return pack(a + b);
endfunction

function Bit#(14) add_n14(UInt#(14) a, UInt#(14) b);
   return pack(a + b);
endfunction

function Bit#(16) add_n16(UInt#(16) a, UInt#(16) b);
   return pack(a + b);
endfunction

// x1, x1_star, x2, x2_star
function Bit#(14) get_parity_hw_x1(RNSNum rns_num);
    Bit#(1) or_bit = ~(rns_num.x1_star[0] | rns_num.x1_star[7]);
    Bit#(7) inv_num = {~(rns_num.x1_star[6:1]), or_bit};
    Bit#(7) sm = add_mod_n7(rns_num.x1, inv_num);
    Bit#(7) rotate = {sm[0], sm[6:1]};
    Bit#(8) sm2 = add_n8(unpack({0,rotate}), unpack(rns_num.x1_star));
    Bit#(14) sm3 = add_n14(unpack({rotate,'0}), unpack({'0, sm2}));
    return sm3;
endfunction

function Bit#(16) get_parity_hw_x2(RNSNum rns_num);
    Bit#(1) or_bit = ~(rns_num.x2_star[0] | rns_num.x2_star[8]);
    Bit#(8) inv_num = {~(rns_num.x2_star[7:1]), or_bit};
    Bit#(8) sm = add_mod_n8(rns_num.x2, inv_num);
    Bit#(8) rotate = {sm[0], sm[7:1]};
    Bit#(9) sm2 = add_n9(unpack({0,rotate}), unpack(rns_num.x2_star));
    Bit#(16) sm3 = add_n16(unpack({rotate,'0}), unpack({'0, sm2}));
    return sm3;
endfunction

function Bit#(1) get_parity(RNSNum rns_num);
    Bit#(14) x1 = get_parity_hw_x1(rns_num);
    Bit#(16) x2 = get_parity_hw_x2(rns_num);
    Bit#(14) sm = add_mod_n14({'0,x2[15:14]},{'0,x2[13:0]});
    Bit#(14) inv_sm = ~sm;
    Bit#(14) sm2 = add_mod_n14(x1,{'0,inv_sm});
    Bit#(1) parity = sm2[0] ^ x2[0];
    return parity;
endfunction

function RNSNum rns_addition(RNSNum num1, RNSNum num2);
    RNSNum sum;
    sum.x1 = add_mod_n7(num1.x1, num2.x1); 
    sum.x1_star = add_mod_n7_plus1(num1.x1_star, num2.x1_star); 
    sum.x2 = add_mod_n8(num1.x2, num2.x2);
    sum.x2_star = add_mod_n8_plus1(num1.x2_star, num2.x2_star); 
    return sum;
endfunction

function RNSNum rns_inv(RNSNum num);
    RNSNum sum;
    sum.x1 = 127 - num.x1; 
    sum.x1_star = 129 - num.x1_star;
    sum.x2 = 255 - num.x2;
    sum.x2_star = 257 - num.x2_star; 
    return sum;
endfunction

// returns 1 when true (input > M/2)
function Bit#(1) greater_than_middle_point(RNSNum rns_num);
    // constants based on n=7 moduli:
    // threshold additive inv: (64, 65, 128, 129) inv parity 0
    RNSNum thres_add_inv;
    thres_add_inv.x1 = 64; thres_add_inv.x1_star = 65;
    thres_add_inv.x2 = 128; thres_add_inv.x2_star = 129;
    Bit#(1) inv_thres_parity = 0;
    
    RNSNum c_rns = rns_addition(rns_num, thres_add_inv);
    Bit#(1) parity_c = ~get_parity(c_rns);
    Bit#(1) parity_a = ~get_parity(rns_num);
    Bit#(1) parity = parity_a ^ parity_c ^ inv_thres_parity;
    return parity;
endfunction

function UInt#(32) compare( UInt#(32) tmp_a, UInt#(32) tmp_b );
        
	RNSNum a = unpack(pack(tmp_a));
	RNSNum b = unpack(pack(tmp_b));

        RNSNum inv_b = rns_inv(b);
        RNSNum c = rns_addition(a, inv_b);
        Bit#(1) parity_a = ~get_parity(a);
        Bit#(1) parity_b = ~get_parity(b);
        Bit#(1) parity_c = ~get_parity(c);
        Bit#(1) parity = parity_a ^ parity_b ^ parity_c;
        RNSNum out = unpack(parity) ? a : b;
        return unpack(pack(out));
endfunction

