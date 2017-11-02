pe:
	mkdir -p buildDir
	bsc -u -sim -bdir buildDir -info-dir buildDir -simdir buildDir -vdir buildDir -aggressive-conditions TestBenchPE.bsv
	bsc -sim -e mkTbPE -bdir buildDir -info-dir buildDir -simdir buildDir -o simPe buildDir/*.ba

layereval:
	mkdir -p buildDir
	bsc -p .:%/Prelude:./uart-bsv -u -sim -bdir buildDir -info-dir buildDir -simdir buildDir -vdir buildDir -aggressive-conditions TestBenchLayerEval.bsv
    	# bsc -p .:%/Prelude:/homes/skoppula/bram-uart-eg/uart-bsv -u -sim -bdir buildDir -info-dir buildDir -simdir buildDir -vdir buildDir -g mkSimBRAMUARTTest -aggressive-conditions BRAMUARTTest.bsv
	bsc -sim -e mkTbLayerEval -bdir buildDir -info-dir buildDir -simdir buildDir -o simLayerEval buildDir/*.ba

all: pe layereval

clean:
	rm -rf buildDir sim*

.PHONY: clean all add compile
.DEFAULT_GOAL := all
