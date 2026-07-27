# Area-Efficient-Serialized-N-Tap-FIR-Filter-with-Sequential-Booth-Multiplier

## 📖 Overview

This project presents the design and implementation of an **Area-Efficient Parameterized N-Tap FIR (Finite Impulse Response) Filter** using **Verilog HDL** on an FPGA. The architecture employs a **single sequential Radix-2 Booth multiplier** and a **feedback-based Multiply-Accumulate (MAC)** unit to minimize hardware resources and dynamic power consumption.

Unlike conventional FIR filters that dedicate one multiplier per tap, this design reuses a single multiplier across all filter taps under the control of an FSM, providing an efficient trade-off between throughput, area, and power.

---

## 🏗 Architecture Highlights

- Designed a parameterized **N-Tap FIR filter** using a **single sequential Radix-2 Booth multiplier** and a **feedback accumulator (MAC)** for area-efficient filtering.
- Developed a **modular RTL architecture** consisting of a **dual-port RAM**, **FSM-based controller**, **Booth multiplier**, and **feedback datapath** using Verilog HDL.
- Implemented sequential multiply-accumulate operations by reusing a single hardware multiplier across all filter taps, significantly reducing LUT and DSP utilization.
- Stored input samples and filter coefficients in dual-port memory for efficient sequential access.
- Verified the complete RTL design through simulation, validating dual-port RAM operation, signed Booth multiplication, MAC functionality, and FIR output generation.
- Performed on-chip functional verification using Xilinx Integrated Logic Analyzer (ILA).

---

## 📊 FPGA Resource Utilization

| Resource | Utilization |
|----------|------------:|
| LUTs | 95 / 20,800 (0.46%) |
| Flip-Flops | 87 / 41,600 (0.21%) |
| BRAM | 0.5 / 50 (1%) |
| BUFG | 1 |
| LUTRAM | 6 / 9,600 (0.06%) |

The serialized architecture demonstrates extremely low FPGA resource utilization while maintaining correct FIR filtering functionality.

---

## ⚡ Power Analysis

| Parameter | Value |
|-----------|-------|
| Total On-Chip Power | **0.075 W** |
| Static Power | **0.072 W (95%)** |
| Dynamic Power | **0.004 W (5%)** |
| Junction Temperature | **25.4°C** |
| Thermal Margin | **59.6°C** |

The sequential MAC architecture minimizes switching activity, resulting in very low dynamic power consumption.

---

## 💡 Design Insight

Conventional FIR filters require one multiplier per tap, increasing FPGA resource utilization and power consumption.

This implementation adopts a **serialized architecture**, where a single **Radix-2 Booth multiplier** is reused for all filter taps. An FSM coordinates memory access and sequential multiply-accumulate operations, enabling:

- Significant reduction in LUT and DSP utilization
- Lower dynamic power consumption
- Smaller hardware footprint
- Efficient sequential MAC computation
- Scalable parameterized FIR implementation

Although the filter requires multiple clock cycles to compute one output sample, it achieves excellent area and power efficiency, making it suitable for low-cost FPGA and embedded DSP applications.

---

## 🛠 Tools & Technologies

- Verilog HDL
- Xilinx Vivado
- Xilinx Integrated Logic Analyzer (ILA)
- FPGA Development Board

---

## ✅ Verification

The complete FIR filter was verified through:

- RTL simulation using Verilog testbenches
- Functional waveform analysis
- Validation of dual-port RAM sample and coefficient access
- Signed Radix-2 Booth multiplier verification
- Feedback MAC operation verification
- FIR output validation
- FPGA implementation and on-chip debugging using Xilinx ILA
- Resource utilization analysis
- Power analysis using Vivado reports

---

## 📷 Project Demonstration

### RTL Simulation
**figure 1: RTL Simulation of 5-Tap Serialized FIR Filter**

<img width="1906" height="715" alt="Screenshot 2026-03-01 151621" src="https://github.com/user-attachments/assets/901356e8-a6fc-4ec9-b31c-8933b5bcca41" />

**figure 2: RTL Simulation of 21-Tap FIR Filter for ECG Noise Removal**

<img width="4096" height="3276" alt="GridArt_20260727_120725195 jpg" src="https://github.com/user-attachments/assets/33a07dfd-31ea-4a42-8e09-0e1d508eefc3" />

---

### Resource Utilization Report

<img width="616" height="337" alt="Screenshot 2026-03-01 165514" src="https://github.com/user-attachments/assets/c58b7754-6bf3-4f3c-bb01-dfa141c86dee" />

---

### Power Analysis Report

<img width="670" height="339" alt="Screenshot 2026-03-01 165654" src="https://github.com/user-attachments/assets/b5de4f63-457e-4843-8d6e-55c201a6c283" />
<img width="529" height="374" alt="Screenshot 2026-03-01 165713" src="https://github.com/user-attachments/assets/de94d373-2205-4613-bf3b-cdbf46b4a670" />


