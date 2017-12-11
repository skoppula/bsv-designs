#constraints from /db/bba5/users/yuming/ATLAS2/new_arch/syn_ldpc_dpe/constraints

# Time is in microseconds and load is in femtofarads
set_time_unit -picoseconds 1.0
set_load_unit -femtofarads

#########################################
# operating conditions (conditions.tcl) #
#########################################
set clock_period 6400
set clock_uncertainty 100
set clock_latency 200
set max_transition 100
set load_value 5
set delay 100

set driving_cell INVD2
set driving_pin ZN

# Functional Clock Period Declaration
# ------------------------------------

# Time Period in (ps)

create_clock -name clk -period $clock_period [ get_ports CLK ]
set_clock_uncertainty $clock_uncertainty [ get_clocks {clk} ]
set_clock_transition $max_transition [ get_clocks {clk} ]
set_clock_latency $clock_latency [get_clocks {clk} ]

set_max_transition $max_transition $design

#########################################
#  (constraints.tcl)                    #
#########################################
  # ----------------
    # I/O Constraints
    # ----------------
set_max_fanout 16 [all_inputs]
set_max_fanout 16 [current_design]

set_driving_cell -cell $driving_cell -pin $driving_pin [all_inputs]
set inputs [remove_from_collection [all_inputs] CLK ];
set_input_delay         ${clock_uncertainty} -min -clock clk ${inputs}
set_input_delay         ${delay} -max -clock clk ${inputs}

set_load $load_value [all_outputs]
set outputs [all_outputs]
set_output_delay        ${clock_uncertainty} -min -clock clk ${outputs}
set_output_delay        ${delay} -max -clock clk ${outputs}
