#include <Arduino.h>
#include <stdbool.h>

const unsigned long BAUDRATE = 9600;

const uint8_t PINS_DIP_SW[] = {5, 6, 7};
const uint8_t PINS_SIG_IN[] = {8, 9, 10};
const uint8_t PIN_SIG_OUT = 2;

bool sig_out(bool);

void setup() {
  // Initialize Serial
  Serial.begin(BAUDRATE);

  // Initialize dip switch
  for (size_t i = 0; i < sizeof(PINS_DIP_SW) / sizeof(*PINS_DIP_SW); i++) {
    pinMode(PINS_DIP_SW[i], INPUT);
  }

  // Initialize sensor pins
  for (size_t i = 0; i < sizeof(PINS_SIG_IN) / sizeof(*PINS_SIG_IN); i++) {
    pinMode(PINS_SIG_IN[i], INPUT_PULLUP);
  }

  // Initialize output
  pinMode(PIN_SIG_OUT, OUTPUT);
  pinMode(LED_BUILTIN, OUTPUT);

  Serial.println("Arduino ready!");
}

void loop() {
  // put your main code here, to run repeatedly:
}

bool sig_out(bool state) {
  Serial.print("OUTPUT-"); Serial.println(state);
  digitalWrite(PIN_SIG_OUT, state);
  digitalWrite(LED_BUILTIN, state);
  
  return state;
}

void serialEvent() {
  String msg = Serial.readString();
  msg.trim();

  if (msg == "1") {
    sig_out(true);
  } else if (msg == "0") {
    sig_out(false);
  }
}