# 💡 Automatic Street Light Controller Using Verilog HDL

## 📌 Project Overview

The Automatic Street Light Controller is a digital design project developed using Verilog HDL. The system automatically switches street lights ON during darkness and OFF during daylight based on a digital light sensor input.

This project demonstrates the fundamentals of digital logic design, combinational circuits, Verilog HDL coding, and functional verification through simulation.

## 🎯 Objectives

* Design an automatic street light controller using Verilog HDL.
* Simulate daylight and darkness conditions using a digital sensor input.
* Automatically control the street light output based on the sensor condition.
* Verify the design functionality using a Verilog testbench.
* Understand the basics of digital VLSI design and simulation.

## 🛠️ Tools and Technologies

* **Hardware Description Language:** Verilog HDL
* **Simulation Platform:** EDA Playground
* **Simulator:** Icarus Verilog
* **Verification:** Verilog Testbench
* **Version Control:** GitHub

## ⚙️ Working Principle

The system uses a digital input named `light_sensor` to represent the surrounding light condition. The controller processes this input and generates the appropriate street light output.

| Environmental Condition | Sensor Input | Street Light Output | Status |
| ----------------------- | ------------ | ------------------- | ------ |
| Darkness                | 0            | 1                   | ON     |
| Daylight                | 1            | 0                   | OFF    |

The controller uses a NOT logic operation to produce the output.

When the sensor input is LOW, the street light turns ON. When the sensor input is HIGH, the street light turns OFF.

**Note:** The light sensor is represented by a digital input in this simulation. A physical sensor is not connected to the design.

## 🧱 Block Diagram

```text
       +---------------------+
       |    Light Sensor     |
       |   (Digital Input)   |
       +----------+----------+
                  |
                  v
       +---------------------+
       |  Verilog Controller |
       |    (NOT Logic)      |
       +----------+----------+
                  |
                  v
       +---------------------+
       |    Street Light     |
       |      ON / OFF       |
       +---------------------+
```

## 📂 Project Structure

The GitHub repository contains the following files:

* **design.sv** — Contains the Verilog design module.
* **testbench.sv** — Contains the testbench used for functional verification.
* **README.md** — Provides project documentation and simulation details.

## 🧪 Simulation and Verification

The design was simulated using EDA Playground with the Icarus Verilog simulator.

The testbench applies different sensor input conditions and observes the corresponding street light output.

The following test cases are verified:

| Test Case | Sensor Input | Expected Output | Condition            |
| --------- | ------------ | --------------- | -------------------- |
| 1         | 0            | 1               | Darkness — Light ON  |
| 2         | 1            | 0               | Daylight — Light OFF |
| 3         | 0            | 1               | Darkness — Light ON  |
| 4         | 1            | 0               | Daylight — Light OFF |

### Verification Results

* The street light turns ON during darkness.
* The street light turns OFF during daylight.
* The output changes according to the sensor input.
* The simulation output matches the expected behavior.
  ![Automatic Street Light Controller Waveform](images/waveform_result.png)

## ▶️ How to Run the Project

1. Open [EDA Playground](https://www.edaplayground.com/).
2. Select Verilog/SystemVerilog as the language.
3. Select Icarus Verilog as the simulator, if available.
4. Enter the design module in the design editor.
5. Enter the testbench in the testbench editor.
6. Enable waveform viewing if required.
7. Click **Run** to execute the simulation.
8. Check the console output and waveform to verify the functionality.

## 📚 Concepts Learned

Through this project, the following concepts are demonstrated:

* Verilog HDL module design
* Input and output port declarations
* Continuous assignments
* NOT gate and combinational logic
* Testbench development
* Functional verification
* Simulation output analysis
* Waveform inspection using EDA tools

## 🚀 Future Enhancements

The project can be extended with the following features:

* Control multiple street lights using a single sensor.
* Add a testbench checker to automatically report PASS or FAIL.
* Model a light sensor with an adjustable detection threshold.
* Implement the controller on an FPGA board.
* Interface with a physical LDR sensor and suitable hardware to create a practical prototype.

## 🏁 Conclusion

The Automatic Street Light Controller was designed using Verilog HDL and simulated using EDA Playground.

The simulation verifies that the street light switches ON during darkness and OFF during daylight. This project provides a foundation for understanding combinational logic design, Verilog programming, and functional verification in digital VLSI systems.

## 👨‍💻 Author

**ECE Student | VLSI and Digital Design Enthusiast**

---

⭐ This project is intended for educational purposes and demonstrates the basic principles of digital control using Verilog HDL.
