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


---


### Resource Utilization Report


---

### Power Analysis Report
*Add Vivado power report screenshots here.*
