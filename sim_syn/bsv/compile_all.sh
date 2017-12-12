make_test.zsh pe16 --verilog
make_test.zsh pe32 --verilog
make_test.zsh pefp16 --verilog
make_test.zsh pefp32 --verilog

zsh run_simv.zsh pe16 --dump
zsh run_simv.zsh pe32 --dump
zsh run_simv.zsh pefp16 --dump
zsh run_simv.zsh pefp32 --dump
