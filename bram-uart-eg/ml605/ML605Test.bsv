import Clocks::*;
import UART::*;
import BRAMUARTTest::*;
import XilinxCells::*;
import StmtFSM::*;

(* always_ready, always_enabled *)
interface ML605Test;
    interface UARTPins uart;
    method Bit#(7) leds;
endinterface

(* synthesize *)
module mkML605Test (ML605Test ifc);
    let clk <- mkClockBUFG;
    let inv_rst <- invertCurrentReset(clocked_by clk);

    Integer clock_freq = 66000000;
    Integer baud_rate = 115200;
    let cfg = Config {parity: NONE, divider:fromInteger((clock_freq + (baud_rate/2))/baud_rate), two_stop_bits:False};

    let m <- mkBRAMUARTTest(cfg, clocked_by clk, reset_by inv_rst);

    Wire#(Bit#(1)) w_cts <- mkBypassWire(clocked_by clk, reset_by inv_rst);

    interface UARTPins uart;
        method txd = m.uart_pins.txd;
        method rxd = m.uart_pins.rxd;
        method rts = m.uart_pins.rts;
        method cts(v) = action
            m.uart_pins.cts(v);
            w_cts <= v;
        endaction;
    endinterface

    method leds = {
        m.uart_pins.rts,
        w_cts,
        pack(m.featureRAM_error),
        pack(m.weightRAM_error),
        pack(m.uart_errors.overrun_error),
        pack(m.uart_errors.parity_error),
        pack(m.uart_errors.framing_error)
    };
endmodule


