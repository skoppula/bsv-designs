compile:
	mkdir -p buildDir
	bsc -u -sim -bdir buildDir -info-dir buildDir -simdir buildDir -vdir buildDir -g mkSimBRAMUARTTest -aggressive-conditions BRAMUARTTest.bsv
    	# bsc -p .:%/Prelude:/homes/skoppula/bram-uart-eg/uart-bsv -u -sim -bdir buildDir -info-dir buildDir -simdir buildDir -vdir buildDir -g mkSimBRAMUARTTest -aggressive-conditions BRAMUARTTest.bsv
	# bsc -p .:%/Prelude:/homes/skoppula/bram-uart-eg/uart-bsv -u -sim -bdir buildDir -info-dir buildDir -simdir buildDir -vdir buildDir -aggressive-conditions BRAMUARTTest.bsv

memexample: compile
	# bsc -sim -e mkTbMuxSimple -bdir buildDir -info-dir buildDir -simdir buildDir -o simMuxSimple buildDir/*.ba
	bsc -sim -e mkSimBRAMUARTTest -bdir buildDir -info-dir buildDir -simdir buildDir -o simBRAMUARTTest buildDir/*.ba

clean:
		rm -rf buildDir sim*



