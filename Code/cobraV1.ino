#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver robot = Adafruit_PWMServoDriver(); // Default I2C address 0x40

#define SERVOMIN  150  
#define SERVOMAX  600  

int angleToPulse(int angle) {
  return map(angle, 0, 180, SERVOMIN, SERVOMAX);
}

// Servo channels
int baseChannel = 0;
int lowerArmChannel_1 = 1;
int lowerArmChannel_2 = 2;
int upperArmChannel_1 = 3;
int upperArmChannel_2 = 4;
int wristChannel = 5;
int gripperChannel = 6;

const int startPos[7] = {95, 0, 0, 0, 90, 90, 90}; // starting position
int currentPos[7];  // track current positions

// Simple linear move for all servos together
void moveAllServos(const int targets[], int steps = 45, int stepDelay = 8) {  // <-- Faster (8ms)
  int start[7];
  for (int i = 0; i < 7; i++) start[i] = currentPos[i];

  for (int step = 1; step <= steps; step++) {
    for (int i = 0; i < 7; i++) {
      if (i == gripperChannel) continue; // keep gripper instant
      int newAngle = start[i] + (targets[i] - start[i]) * step / steps;
      robot.setPWM(i, 0, angleToPulse(newAngle));
    }
    delay(stepDelay);
  }

  // Gripper instantly at end
  robot.setPWM(gripperChannel, 0, angleToPulse(targets[gripperChannel]));

  // Save final positions
  for (int i = 0; i < 7; i++) currentPos[i] = targets[i];
}

void setup() {
  Serial.begin(115200);
  Wire.begin(21, 22);
  robot.begin();
  robot.setPWMFreq(50);
  delay(10);

  // Initialize current positions
  for (int i = 0; i < 7; i++) currentPos[i] = startPos[i];
}

void loop() {
  int randomPos[7] = {130, 20, 15, 40, 130, 0, 0};

  moveAllServos(startPos, 45, 8);   // Slightly faster to start
  delay(2000);
  moveAllServos(randomPos, 45, 8);  // Slightly faster to random
  delay(2000);
}