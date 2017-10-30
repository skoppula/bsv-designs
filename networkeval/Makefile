compile:
	mkdir -p buildDir
	bsc -u -sim -bdir buildDir -info-dir buildDir -simdir buildDir -vdir buildDir -aggressive-conditions TestBenchPE.bsv
	bsc -u -sim -bdir buildDir -info-dir buildDir -simdir buildDir -vdir buildDir -aggressive-conditions TestBenchLayerEval.bsv

pe: compile
	bsc -sim -e mkTbPE -bdir buildDir -info-dir buildDir -simdir buildDir -o simPe buildDir/*.ba

layereval: compile
	bsc -sim -e mkTbLayerEval -bdir buildDir -info-dir buildDir -simdir buildDir -o simLayerEval buildDir/*.ba

all: pe layereval

clean:
	rm -rf buildDir sim*

.PHONY: clean all add compile
.DEFAULT_GOAL := all
