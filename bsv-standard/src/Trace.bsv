import FShow::*;
import List::*;

import "BDPI" function ActionValue#(Bool) do_trace(String tag);

function Action trace(String tag, d val)
provisos(FShow#(d))
= action
    let do_tr <- do_trace(tag);
    if (do_tr) $display($time, "\t%m.", tag, "\t", fshow(val));
endaction;

function Action traceIn(List#(String) tags, String tag, d val)
provisos(FShow#(d))
= action
    if (List::elem(tag, tags)) trace(tag, val);
endaction;

function Action epStart(String epoch, d val)
provisos(FShow#(d))
= trace("start " + epoch, val);

function Action epStop(String epoch, d val)
provisos(FShow#(Tuple3#(String, d, String)))
= trace("end " + epoch, val);

instance FShow#(Fmt);
    function fshow = id;
endinstance
