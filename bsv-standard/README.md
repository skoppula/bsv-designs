# A standard library of Bluespec packages

## Standard
([src](src/Standard.bsv))
This library exports some commonly used packages from Bluespec's library and implements some new packages.

Packages from Bluespec library:

- ClientServer
- Connectable
- FIFO
- FIFOF
- FShow
- GetPut
- List
- NumberTypes
- RegFile
- SpecialFIFOs
- StmtFSM
- Vector

New packages:

- [Abbrevs](#abbrevs)
- [AReg](#areg)
- [AV](#av)
- [Credit](#credit)
- [Ehr](#ehr)
- [GetPutClientServer](#getputclientserver)
- [ListOps](#listops)
- [MiscFunctions](#miscfunctions)
- [MiscModules](#miscmodules)
- [TAddr](#taddr)
- [Loop](#loop)
- [Trace](#trace)
- [VectorOps](#vectorops)

## How to use

1. In your BSV code, do `import Standard::*;` to get all the packages.
2. In bsc compile command, add the folder containing Standard.bsv to the search path (`-p` option).
3. If you are using the `trace` function from [Trace.bsv](src/Trace.bsv), add full path to [trace.c](src/trace.c) to bsc link command. With bsim.py, use the `--ls` option.

## Abbrevs
([src](src/Abbrevs.bsv))
Shortened names for some common types and functions

- T2, T3, t2, t3 for Tuple2, Tuple3, tuple2, tuple3
- V, V2, V3 for Vector, Vector2D, Vector3D

## AReg
([src](src/AReg.bsv))
`AReg` (short for ActionReg) is a `Reg`-like interface with the difference that the `_read` method is an `ActionValue`. This is meant to replace server and client interfaces. That is, instead of `server.request.put(x)` and `y <- server.response.get()`, you'll do `server <= x` and `y <- server`.

If you want just `_read` or just `_write`, use `ARead` and `Write` respectively.

### ARead

```bsv
interface ARead#(type trd)
  method ActionValue#(trd) _read;
endinterface

instance ToGet#(ARead#(trd), trd)

function ARead#(trd) toARead(tifc ifc) provisos(ToGet#(tifc, trd))
```

### Write

```bsv
interface Write#(type t)
  method Action _write(twr val);
endinterface

instance ToPut#(Write#(twr), twr);

function Write#(twr) toWrite(tifc ifc) provisos(ToPut#(tifc, twr))
```

### AReg

```bsv
interface AReg#(type trd, type twr)
  method ActionValue#(trd) _read;
  method Action _write(twr val);
endinterface

instance ToPut#(AReg#(trd, twr), twr)

instance ToGet#(AReg#(trd, twr), trd)

function AReg#(trd, twr) toAReg(tifc ifc)
  provisos(ToGet#(tifc, trd), ToPut#(tifc, twr)

function AReg#(trd, twr) toAReg2(tget g, tput p)
  provisos(ToGet#(g, trd), ToPut#(p, twr)

module mkAReg(module#(tifc) mkIfc, AReg#(trd, twr) ifc)
  provisos(ToGet#(tifc, trd), ToPut#(tifc, twr))
```

### Connectables

```bsv
instance Connectable#(ARead#(t), Write#(t))

instance Connectable#(Write#(t), ARead#(t))

instance Connectable#(AReg#(tx, ty), AReg#(ty, tx))
```

Interface transformers (`toARead, toWrite, toAReg, toAReg2`) can convert anything belonging to the typeclasses `ToPut, ToGet` to `ARead, Write, AReg`. The `mkAReg` module transformer can convert modules directly. For example, instead of

```
FIFO#(d) fifo <- mkFIFO;
AReg1#(d) areg = toAReg(fifo);
```

you can do

```
AReg1#(d) areg <- mkAReg(mkFIFO);
```

## AV
([src](src/AV.bsv))
Instances of `Literal` and `Arith` defined for `ActionValue#(d)`. Also functions `liftAV, liftAV2` to convert functions acting on values into functions acting on actionvalues.

- `typedef ActionValue#(t) AV#(type t)`
- `function AV#(tf) liftAV(function tf f(ta a), AV#(ta) ava)`
- `function AV#(tf) liftAV2(function tf f(ta a, tb b), AV#(ta) ava, AV#(tb) avb)`
- `function AV#(d) toAV(Action a, d x)`: Combine an action and a value into an actionvalue
- `function AV#(d) noAV(d x)`: Convert value into actionvalue with no action

## Credit
([src](src/Credit.bsv))
Splits the handshaking on Get/Put methods into separate data and credit methods. Pipelining registers can be added on the data and credit signals. The principle is similar to Bluespec's CGetPut package. But the methods in CGetPut are hidden so pipelining registers can only be added in Verilog. With Credit, they can be added in BSV.

See comments in the source code for usage example and more details.

```bsv
interface CreditTx#(numeric type max_credit, type dtype);
	method Action put(dtype i);
	method Maybe#(dtype) data;
	method Action credit(Bool c);
    method Bool underflow;
endinterface

interface CreditRx#(numeric type max_credit, type dtype);
	method ActionValue#(dtype) get;
	method Action data(Maybe#(dtype) i);
	method Bool credit;
	method Bool overflow;
endinterface

module mkCreditTx(CreditTx#(max_credit, dtype))

module mkCreditRx(CreditRx#(max_credit, dtype))
```

## Ehr
([src](src/Ehr.bsv))

Ephemeral history registers by Muralidaran Vijayaraghavan. Similar to Bluespec's CReg, but with fewer scheduling constraints. In CReg, the reads are ordered among each other. In Ehr, the reads are conflict-free. In practice, Ehr and CReg should have the same schedule because of writes.

## GetPutClientServer
([src](src/GetPutClientServer.bsv))
Additions to GetPut

- `function ActionValue#(tdata) get(tifc ifc) provisos(ToGet#(tifc, tdata))`
- `function Action put(tifc ifc, tdata data) provisos(ToPut#(tifc, tdata))`
- `moveTo` gets a value from a ToGet interface and puts it into a ToPut interface
- Instances of `ToGet` and `ToPut` defined for `Client` and `Server`. They return their `request` and `response` subinterfaces.

## ListOps
[src](src/ListOps.bsv)

- `function List#(d) list(d x1, d x2, ...)`

## MiscFunctions
([src](src/MiscFunctions.bsv))

- `function UInt#(TAdd#(n, 1)) add(UInt#(n) a, UInt#(n) b)`
- `function Int#(TAdd#(n, 1)) toInt(UInt#(n) a)`
- `function UInt#(n) uAbs(Int#(n) a)`
- `function d clip(d in, d minv, d maxv) provisos (Ord#(d))`
- `function Action incr(Reg#(d) r, d x)` and `set(Reg#(d) r, d x)`
- `function d pie(Bool pred, d if_val, d else_val) = pred? if_val: else_val`
- `function d whenValid(Maybe#(d) x)`: extract valid value from a maybe but attach a guard to it.
- `function dout bitConv(din xin)`: convert a value to bits and then to a different type. Works only if the two types have the same bitsize.

## MiscModules
[src](src/MiscModules.bsv)

- `module mkSizedBypassFIFO #(Integer fifoDepth) (FIFO#(element_type)) provisos (Bits#(element_type, width_any))`
- `module mkRegFileWCFFull (RegFile#(index_t, data_t))`
- `module mkAutoOnce (AutoOnce#(Action d))` - a 1-bit state machine that will perform the action once. Only has a `Bool done` method.

## TAddr
[src](src/TAddr.bsv)

`typedef BuffIndex#(TLog#(nDepth), nDepth) TAddr#(numeric type nDepth)`

Instances of `SizedLiteral` and `Bounded` are defined for `TAddr`. It inherits other instances from `BuffIndex`.

## Loop
([src](src/Loop.bsv))

An abstraction for for-loops. It is different from the StmtFSM for-loops in that it does not take extra cycles to update counters.

A `Loop` consists of a `next` action and an `isLast` condition. In many cases, you want to describe a loop using a typical action (say, increment a counter) and a different final action for the last iteration of the loop (set counter
to 0). This is provided by the `loop` function.

`function Loop loop(Action loopAction, Bool isLast, Action lastAction)`

You might want the loop to go through all its states and then enter a "done" state. This is provided by `mkLoopOnce`:

`module mkLoopOnce(Loop originalLoop, Bool startDone, Loop ifc)`

`mkLoopOnce` implements `isDone` and `restart` along with the original `next` and `loop` methods in `Loop`. `isDone` returns `True` in the "done" state and `restart` is used to bring it out of "done". The loop will begin in "done" if the `startDone` is `True`.

Two loops can be nested using the `nest` function.

`function Loop nest (Loop outer, Loop inner)`

Each iteration of the nested loop runs one iteration of the inner loop and, for the last iteration of the inner loop, also runs the last iteration of the outer loop. If inner loop enters "done", the next iteration of the nested loop resets the inner loop instead.

Two loops can be chained one after the other using `mkChain`.

`module Loop mkChain(Loop first, Loop second, Loop ifc)`

## Trace
[src](src/Trace.bsv)

- `function Action trace(String tag, d val) provisos(FShow#(d))`: Displays `$stime`, `tag` and `fshow(val)` separated by tabs.
- `function Action traceIn(List#(String) tags, String tag, d val)`: Displays `tag` and `val` only if `tag` is present in `tags`.

By default, all traces are printed. To disable all traces, set environment variable `BSV_TRACE` to `0`. To enable only some traces, set `BSV_TRACE` to a string containing the desired tag names - e.g. `tag1:tag2:tag3`.

## VectorOps
[src](src/VectorOps.bsv)

- `function Vector#(n, d) vector(d x1, d x2, ..., d xn)` for arbitrary `n`.
- Instances of `Literal` and `Arith` defined for `Vector`.
- `vecExtend, vecExtendWith` to extend vectors
- 2-D and 3-D vectors: `Vector2D#(n1, n2, d), Vector3D#(n1, n2, n3, d)` and   functions `map2d, map3d,` etc.
- `decat`: convert 1-D vector to 2-D vector
- `reshape`: change shape of 2-D vector

# lambda.bsv
[src](src/lambda.bsv)

A 1-arg lambda has been defined as a macro in lambda.bsv. For example, it can be used as ``let double = `lambda(x, 2*x)``.  You need to include this file as `` `include "lambda.bsv" ``

# Make system - [bsim.py](bsim.py)

This script provides a docopt-style CLI to the Bluespec compiler. It also performs dependency checking using [fabricate](http://code.google.com/p/fabricate/). It can also bypass bsc for verilog link and directly call irun (use with --vsim irun).
