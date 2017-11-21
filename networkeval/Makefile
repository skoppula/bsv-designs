pe:
	mkdir -p bin
	bsc -u -sim -bdir bin -info-dir bin -simdir bin -vdir bin -aggressive-conditions TestBenchPE.bsv
	bsc -sim -e mkTbPE -bdir bin -info-dir bin -simdir bin -o simPe bin/*.ba

layereval:
	mkdir -p bin
	bsc -p .:%/Prelude:./uart-bsv -u -sim -bdir bin -info-dir bin -simdir bin -vdir bin -aggressive-conditions TestBenchLayerEval.bsv
# bsc -p .:%/Prelude:/homes/skoppula/bram-uart-eg/uart-bsv -u -sim -bdir bin -info-dir bin -simdir bin -vdir bin -g mkSimBRAMUARTTest -aggressive-conditions BRAMUARTTest.bsv
	bsc -sim -e mkTbLayerEval -bdir bin -info-dir bin -simdir bin -o simLayerEval bin/*.ba

layerevalverilog:
	mkdir -p bin
	# bsc -p .:%/Prelude:./uart-bsv -u -verilog -bdir bin -info-dir bin -simdir bin -vdir bin -aggressive-conditions TestBenchLayerEval.bsv
	# bsc -p .:%/Prelude:./uart-bsv -u -verilog -bdir bin -info-dir bin -simdir bin -vdir bin -aggressive-conditions -g LayerEval TestBenchLayerEval.bsv
	# bsc -verilog -elab -e mkTbLayerEval -bdir bin -info-dir bin -simdir bin -o simLayerEval bin/*.ba
	bsc -p .:%/Prelude:./uart-bsv -u -verilog -elab -bdir bin -info-dir bin -vdir bin -aggressive-conditions TestBenchLayerEval.bsv
	bsc -verilog -bdir bin -info-dir bin -vdir bin -e mkTbLayerEval -o bin/verBinLayerEval bin/*.ba
	# bsc -verilog -elab -bdir bin -info-dir bin -simdir bin -o simLayerEval bin/*.ba

controller:
	mkdir -p bin
	bsc -p .:%/Prelude:./uart-bsv -u -sim -bdir bin -info-dir bin -simdir bin -vdir bin -aggressive-conditions TestBenchController.bsv
	bsc -sim -e mkTbController -bdir bin -info-dir bin -simdir bin -o simController bin/*.ba

all: pe layereval controller

clean:
	rm -rf bin sim*

.PHONY: clean all add compile
.DEFAULT_GOAL := all
