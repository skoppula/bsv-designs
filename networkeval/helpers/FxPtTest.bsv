FixedPoint#(2,6) test2 = -1.128;
Bit#(8) test3 = pack(test2);
$display("test bit %b", test3);
$display("test two complement %b", (~test3)+1);
$display("test negative %b", -1*test3);

FixedPoint#(2,6) test4 = unpack(test3);
fxptWrite(5, test2); $display();
fxptWrite(5, test4); $display();
FixedPoint#(2,6) test5 = unpack((~test3)+1);
fxptWrite(5, test5); $display();

$display("test overflow");
$display("orig val %b", test2);
fxptWrite(5, test2); $display();
$display("overflow from add %b", test2 + test2);
fxptWrite(5, test2 + test2); $display();

$display("test no overflow");
FixedPoint#(2,6) test6 = -0.128;
$display("orig val %b", test6);
fxptWrite(5, test6); $display();
$display("overflow from add %b", test6 + test6);
fxptWrite(5, test6 + test6); $display();
