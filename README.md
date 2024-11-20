# switch-noise-canceller

For cancelling noise in micro switches, a digital system is needed to check the number of bits according to the clock to determine if the switch is pressed. For instance, if the switch is active high, we need to sample the input at each clock cycle. If we receive 100 ms of a continuous high signal (1 bit) with no zero bit disturbances, the output will be toggled. This program has been tested on the simulation platform available in Xilinx Vivado.
