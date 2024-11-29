# switch-noise-canceller

My project focuses on developing a noise canceller for a micro switch. In this system, the input is sampled with each clock cycle. However, due to the presence of noise in certain situations, the readings can be inaccurate. To address this issue, we implement a counter that tracks the number of inputs indicating active logic. If noise is detected, the counter resets itself. This ensures that only a sustained active logic signal, available for a duration of 100 ms or any other predefined duration, will cause the output of the component to toggle. This provides a reliable trigger indicating that the micro switch has been pressed. Overall, this project has enhanced my understanding of digital systems, demonstrating not only functionality but also efficiency.

This components were tested using a test bench in Xilinx Vivado.
