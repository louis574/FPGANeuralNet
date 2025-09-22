# 🤖 SystemVerilog Neural Network Implementation
📖 Description

This project implements a configurable feedforward neural network entirely in SystemVerilog, designed for low-latency, real time FPGA-based image processing. It supports custom network structures, fixed-point arithmetic, and direct video processing (DVP) integration - handling stalls and controlled via external pclk as a clk. The design is optimised for latency efficiency, with first-layer computations occurring as pixel data streams in. Saturation ReLU is used as a resource efficient yet powerful activation function.

✨ Key Features

🧠 Configurable Neural Network
Flexible structure with user-defined layer sizes and fixed-point representations.

💾 Fixed-Point Arithmetic
Fully supports configurable fixed-point formats for weights, activations, and inputs.

🎥 DVP Integration
Directly processes incoming pixel data with stall handling and streaming-friendly design.

⚡ Ultra-Low Latency
First-layer computations begin as pixel data arrives, resulting in latency of only tens of clock cycles.

🔄 Pipelined Frame-by-Frame Processing
Allows continuous data processing as frames arrive, with downstream layers computing while the first layer already starts on new input — no buffering needed.

🖥️ Fully Synthesizable for Artix-7
Design fully synthesizes on Artix-7 100T, fitting deep neural networks within utilization and timing constraints. Critical path is 12.5 ns, allowing a maximum clock of 80 MHz, sufficient for most edge camera modules.
