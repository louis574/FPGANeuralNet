# 🤖 SystemVerilog Neural Network Implementation
📖 Description

This project implements a configurable feedforward neural network entirely in SystemVerilog, designed for low-latency, real time FPGA-based image processing. It supports custom network structures, fixed-point arithmetic, and direct video processing (DVP) integration - handling stalls and controlled via external pclk as a clk. The design is optimised for latency efficiency, with first-layer computations occurring as pixel data streams in. Saturation ReLU is used as a resource efficient yet powerful activation function.

✨ Key Features

🧠 Configurable Architecture & Fixed-Point Arithmetic
Flexible neural network structure with user-defined layer sizes and fully configurable fixed-point formats, letting developers choose the data width for weights, activations, and inputs. This enables fine control to balance accuracy, resource utilisation, and latency — scaling networks up for precision or trimming them down for ultra-efficient FPGA deployment - all with the goal to squeeze as much performance out of hardware (and minimise latency) as possible.

🎥 DVP Integration
Directly processes incoming pixel data from camera modules with stall handling and streaming-friendly design.

🔄 Pipelined Frame-by-Frame Processing
Allows continuous data processing as frames arrive, with downstream layers computing while the first layer already starts on new input — no buffering needed - will process every frame.

⚡ Ultra-Low Latency
First-layer computations begin as pixel data arrives, resulting in latency of only tens of clock cycles.
This means cycles scale with the number of neurons in all layers (except the first). At 80 MHz (the current max clk), smaller networks like MNIST achieve inference speeds of ~125 ns (per frame), while deeper, more complex networks like low-res face detection complete theirs in about 1 µs.

📉 Optimised for Minimal Hardware Utilisation / Max performance trade-off
Designed to minimise resource usage at every step, achieving competitive accuracy while keeping LUT and DSP counts low (Quoted values are for Artix-7 100T):
  🖊️ MNIST → 92.1% accuracy (8-bit q1.7), 12.5 ns critical path, 14-tick inference, 4k LUTs (6.77%), 0 DSPs
  🙂 Low-Res Face Detection → 88% accuracy (12-bit q3.9), 12.5 ns critical path, 62-tick inference, 28k LUTs (45%), 184 DSPs (76%)
    -  Trained on a custom dataset robust to lighting, angles, expressions, ethnicities, and backgrounds

🖥️ Fully Synthesizable for Artix-7
Design fully synthesizes on Artix-7 100T, fitting deep neural networks within utilization and timing constraints. Critical path is 12.5 ns, allowing a maximum clock of 80 MHz, sufficient for most edge camera modules.
