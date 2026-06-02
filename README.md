# 7-Servo 3D-Printed Robotic Arm

A custom-built robotic arm designed, 3D-printed, wired, and programmed as a hands-on robotics and mechatronics project.
The arm is controlled by an **ESP32** using a **PCA9685 16-channel PWM servo driver**. It uses seven servo motors to control the base, arm segments, wrist, and gripper.

## Project Overview

The goal of this project is to build a lightweight robotic arm capable of controlled joint movement and eventually position-based control using forward and inverse kinematics.
This project combines:

* Mechanical design and 3D printing
* Servo motor actuation
* ESP32 embedded control
* External power distribution
* Multi-joint motion control
* Future kinematics and simulation development

## Features

* 7 servo-controlled joints
* 3D-printed mechanical structure
* ESP32-based control system
* PCA9685 PWM servo driver for stable multi-servo control
* External 5 V power supply for the motors
* Smooth servo movement implementation
* Adjustable joint positions through code
* Designed for future inverse kinematics control

## Degrees of Freedom

The robotic arm includes the following controlled movements:

| Joint       | Function                          | Servo Motor |
| ----------- | --------------------------------- | ----------- |
| Base        | Rotates the entire arm            | DS3225      |
| Lower Arm   | Lifts the lower arm from the base | DS3225      |
| Elbow       | Controls elbow lifting motion     | MG996R      |
| Upper Arm   | Lifts the upper arm segment       | MG996R      |
| Wrist Pitch | Moves the wrist up and down       | MG90S       |
| Wrist Roll  | Rotates the wrist                 | MG90S       |
| Gripper     | Opens and closes the gripper      | MG90S       |

## Hardware

### Electronics

| Component          | Description                                     |
| ------------------ | ----------------------------------------------- |
| ESP32              | Main microcontroller                            |
| PCA9685            | 16-channel PWM servo driver                     |
| Mean Well LRS-75-5 | External 5 V power supply                       |
| DS3225 Servo ×2    | High-torque servos for the heavier lower joints |
| MG996R Servo ×2    | Medium/high-torque servos for the arm joints    |
| MG90S Servo ×3     | Small servos for the wrist and gripper          |

### Mechanical Parts

* Custom 3D-printed robotic arm structure
* 3D-printed arm links
* 3D-printed wrist assembly
* 3D-printed gripper
* Servo mounting brackets and joint connectors

## Servo Channel Mapping

The PCA9685 channels are mapped as follows:

| PCA9685 Channel | Joint              |
| --------------- | ------------------ |
| 0               | Base rotation      |
| 1               | Lower arm lift     |
| 2               | Elbow lift         |
| 3               | Upper arm lift     |
| 4               | Wrist pitch        |
| 5               | Wrist roll         |
| 6               | Gripper open/close |

Example mapping in code:

```cpp
const int baseChannel = 0;
const int lowerArmChannel = 1;
const int elbowChannel = 2;
const int upperArmChannel = 3;
const int wristPitchChannel = 4;
const int wristRollChannel = 5;
const int gripperChannel = 6;
```

## Wiring Overview

### PCA9685 to ESP32

| PCA9685 Pin | ESP32 Pin         |
| ----------- | ----------------- |
| SDA         | GPIO 21           |
| SCL         | GPIO 22           |
| GND         | GND               |
| VCC         | ESP32 logic power |

### Servo Power

The servos are powered using an external 5 V power supply rather than directly from the ESP32.

Important wiring notes:

* The servo power supply is connected to the PCA9685 `V+` terminal.
* The ESP32 ground and external power supply ground must be connected together.
* The ESP32 should not directly power all of the servos.
* High-torque servos can draw significant current, especially under load.

## Software

The arm is controlled using Arduino-compatible C++ code running on the ESP32.

### Main Libraries

* `Wire.h`
* `Adafruit_PWMServoDriver.h`

### Control Method

The PCA9685 board generates PWM signals for each servo. Joint positions are controlled by sending target angles that are converted into PWM pulse values.

The software includes smooth movement behavior so that the servos move gradually toward their target positions instead of instantly jumping between angles.

## Example Starting Pose

An example initial joint pose used during development:

```cpp
int startPose[] = {
    95,  // Base
    0,   // Lower arm
    0,   // Elbow
    0,   // Upper arm
    90,  // Wrist pitch
    90,  // Wrist roll
    90   // Gripper
};
```

Actual safe angle ranges may vary depending on the mechanical design and servo installation orientation.

## Project Structure

```text
robotic-arm/
├── code/                # ESP32 / Arduino control code
├── cad/                 # 3D models and mechanical design files
├── images/              # Project photos and diagrams
├── simulation/          # Future kinematics or MATLAB simulation files
└── README.md
```

The repository structure can be adjusted depending on the files included in the project.

## Current Status

Completed:

* Mechanical arm design and assembly
* 3D-printed structure
* Servo installation
* ESP32 and PCA9685 control setup
* External servo power system
* Basic multi-joint movement
* Smooth servo motion testing

In development:

* Joint calibration and motion refinement
* Improved torque and mechanical stability
* Forward kinematics
* Inverse kinematics
* Simulation-based control
* Position-based end-effector movement

## Challenges Encountered

During development, several practical robotics challenges were explored:

* Providing enough torque for the heavier arm joints
* Reducing servo jitter at the end of movements
* Powering multiple servos safely
* Maintaining a common electrical ground between the controller and power supply
* Matching servo movement directions with the mechanical design
* Planning the transition from direct joint control to inverse kinematics

## Future Improvements

Planned improvements include:

* Implementing forward kinematics
* Implementing inverse kinematics for XYZ position control
* Integrating a simulation model of the arm
* Improving the mechanical rigidity of the joints
* Reducing play and vibration in the printed structure
* Adding manual control through a joystick or graphical interface
* Developing basic pick-and-place movement sequences

## Images and Demonstration

Add project images or videos here once available.

Example:

```md
![Robotic Arm Assembly](images/robotic-arm.jpg)
```

A demonstration video can also be linked here in the future.

## Learning Goals

This project was built as part of a personal learning journey in robotics and mechanical engineering. It provides practical experience in:

* Mechanical CAD design
* 3D printing
* Servo motor selection
* Embedded programming
* Power electronics and wiring
* Multi-joint robotics
* Robotic arm kinematics

## Author

**Yarden Morag**

Mechanical Engineering Student
Interested in robotics, mechatronics, and biomimetic mechanical design.

## License

This project is currently intended for educational and personal development purposes.

A formal open-source license can be added in the future.

