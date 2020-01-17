#include <Arduino.h>
#include <stdbool.h>

const unsigned long BAUDRATE = 9600;

/*
 * PIN Configuration
 */
const uint8_t PINS_DIP_SW[] = {5, 6, 7};
const uint8_t PINS_SIG_IN[] = {8, 9, 10};
const uint8_t PIN_SIG_OUT = 2;

unsigned long PrevTime_SW = 0;
unsigned long PrevTime_Sensor = 0;
unsigned long PrevTime_StateMonitor = 0;

const unsigned long INTERVAL_SW = 200;
const unsigned long INTERVAL_SENSOR = 100;
const unsigned long INTERVAL_STATEMONITOR = 200;

/* DIP switch state variable
 *   SW0 - Disable/Enable Sensor 1
 *   SW1 - Disable/Enable Sensor 2
 *   SW2 - Invert Output
 *
 *   S01
 *    LL - Enable Sensor 0
 *    HL - Enable Sensor 0, 1
 *    LH - Enable Sensor 0, 2
 *    HH - Enable Sensor 0, 1, 2
 *   S2
 *    L  - Output Invert FALSE
 *    H  - Output Invert TRUE
 */
bool State_SW[] = {true, true, true};

/*
 * Sensor state variable
 *   Sensor 0, Sensor1, Sensor 2
 */
bool State_Sensor[] = {false, false, false};


/*
 * Output GPIO state
 */
bool State_Output = false;

/*
 *
 */
bool State_StateMonitor = false;

bool sig_out(bool);
bool getSensorState(int);
void print_sw_state();
void print_sensor_state();
void print_output_state();
void print_state();

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

  Serial.println(F("Arduino ready!"));
}

void loop() {
  /* DIP Switch */
  if (millis() - PrevTime_SW > INTERVAL_SW) {
    PrevTime_SW = millis();

    State_SW[0] = !digitalRead(PINS_DIP_SW[0]);
    State_SW[1] = !digitalRead(PINS_DIP_SW[1]);
    State_SW[2] = !digitalRead(PINS_DIP_SW[2]);
  }

  /* Read Sensor */
  if (millis() - PrevTime_Sensor > INTERVAL_SENSOR) {
    PrevTime_Sensor = millis();

    State_Sensor[0] = digitalRead(PINS_SIG_IN[0]);
    State_Sensor[1] = digitalRead(PINS_SIG_IN[1]);
    State_Sensor[2] = digitalRead(PINS_SIG_IN[2]);      
  }

  if (getSensorState(0) && getSensorState(1) && getSensorState(2)) {
    if (State_SW[2])
      sig_out(false);
    else
      sig_out(true);
  } else {
    if (State_SW[2])
      sig_out(true);
    else
      sig_out(false);
  }

  if (State_StateMonitor && (millis() - PrevTime_StateMonitor > INTERVAL_STATEMONITOR)) {
    PrevTime_StateMonitor = millis();

    print_state(); Serial.println();
  }
}

bool getSensorState(int ch) {
  if (ch > 0) {
    if (State_SW[ch - 1]) {
      return State_Sensor[ch];
    } else {
      return true;
    }
  } else {
    return State_Sensor[0];
  }
}

void serialEvent() {
  String msg = Serial.readString();
  msg.trim();

  if (msg == "out1") {
    sig_out(true);
  } else if (msg == "out0") {
    sig_out(false);
  } else if (msg == "sensor") {
    print_sensor_state();
    Serial.println();
  } else if (msg == "sw") {
    print_sw_state();
    Serial.println();
  } else if (msg == "out") {
    print_output_state();
    Serial.println();
  } else if (msg == "state") {
    print_state();
    Serial.println();
  } else if (msg == "state1") {
    State_StateMonitor = true;
  } else if (msg == "state0") {
    State_StateMonitor = false;
  }
}

bool sig_out(bool state) {
  digitalWrite(PIN_SIG_OUT, state);
  digitalWrite(LED_BUILTIN, state);
  State_Output = state;

  return state;
}

void print_sw_state() {
  Serial.print(F("SWITCH: SW0-")); Serial.print(State_SW[0]);
  Serial.print(F(" SW1-")); Serial.print(State_SW[1]);
  Serial.print(F(" SW2-")); Serial.print(State_SW[2]);
}

void print_sensor_state() {
  Serial.print(F("SENSOR: S0-")); Serial.print(State_Sensor[0]);
  Serial.print(F(" S1-")); Serial.print(State_Sensor[1]);
  Serial.print(F(" S2-")); Serial.print(State_Sensor[2]);
}

void print_output_state() {
  Serial.print(F("SIGOUT-")); Serial.print(State_Output);
}

void print_state() {
  Serial.print(F("SYST-")); Serial.print(millis()); Serial.print(" ");
  print_sw_state(); Serial.print(" ");
  print_sensor_state(); Serial.print(" ");
  print_output_state();
}