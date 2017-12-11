/*
 Loop is meant for rules that implement for loops and is especially useful
 for nested for-loops.

 Something like:
   for(a=0; a<10; a++)
      for(b=0; b<5; b++)
          do_stuff;

  would become:
    let a <- mkReg(0);
    let b <- mkReg(0);

    let doloop = nest(loop(incr(a, 1), a == 9, set(a, 0)),
                      loop(incr(b, 1), b == 4, set(b, 0)));
    rule rl_doloop;
        do_stuff;
        doloop.next;
    endrule
*/
interface Loop;
    method Bool isLast;
    method Action next;
    method Bool isDone;
    method Action restart;
endinterface

function Loop repeated(Action loopAct, Bool isLast) = interface Loop
    method isLast = isLast;
    method next = loopAct;
    method isDone = False;
    method restart = noAction;
endinterface;

function Loop loop(Action loopAct, Bool isLast, Action lastAct) = interface Loop
    method isLast = isLast;
    method next = isLast? lastAct: loopAct;
    method isDone = False;
    method restart = noAction;
endinterface;

// Compose two loops
function Loop nest2 (Loop outer, Loop inner) = interface Loop
    method isLast = outer.isLast && inner.isLast;
    method next = when(!outer.isDone, action
                      if (inner.isDone) inner.restart; else inner.next;
                      if (inner.isLast) outer.next;
                  endaction);
    method isDone = outer.isDone;
    method restart = action outer.restart; inner.restart; endaction;
endinterface;

// Compose many loops
typeclass NestArb#(type d);
    function d nest(Loop l1, Loop l2);
endtypeclass

instance NestArb#(Loop);
    function nest(l1, l2) = nest2(l1, l2);
endinstance

instance NestArb#(function d1 f(Loop l1)) provisos(NestArb#(d1));
    function nest(l1, l2, l3) = nest(nest2(l1, l2), l3);
endinstance

module mkChain (Loop first, Loop second, Loop ifc);
    Reg#(Bool) doing_first <- mkReg(True);
    Bool done = doing_first? first.isDone: second.isDone;

    method isLast = (!doing_first) && second.isLast;
    method Action next if (!done);
        if (doing_first) begin
            first.next;
            if (first.isLast) begin
                doing_first <= False;
                if (second.isDone)
                    second.restart;
            end
        end
        else begin
            second.next;
            if (second.isLast) begin
                doing_first <= True;
                if (first.isDone)
                    first.restart;
            end
        end
    endmethod

    method isDone = done;
    method restart = doing_first? first.restart: second.restart;
endmodule

module mkLoopOnce(Loop li, Bool stDone, Loop ifc);
    Reg#(Bool) rdone <- mkReg(stDone);

    method isLast = li.isLast;
    method Action next if (!rdone);
        li.next;
        rdone <= li.isLast;
    endmethod

    method isDone = rdone;
    method Action restart if(rdone);
        rdone <= False;
    endmethod
endmodule

instance FShow#(Loop);
    function fshow(lp) = $format((lp.isLast? "l" : " ") + (lp.isDone? "d" : " "));
endinstance

// simple loops
function Loop range(Reg#(d) r, d stop)
provisos (Eq#(d), Arith#(d))
= loop(r._write(r + 1), r == stop, r._write(0));

function Loop step(Reg#(d) r, d start, d stop, d step_size)
provisos (Eq#(d), Arith#(d))
= loop(r._write(r + step_size), r == stop, r._write(start));
