int r_pin = 11;
int g_pin = 10;
int b_pin = 9;
byte colorToSwitch[] = {};

void setup() {
  Serial.begin(9600);
  Serial.setTimeout(100);
  pinMode(r_pin, OUTPUT);
  pinMode(g_pin, OUTPUT);
  pinMode(b_pin, OUTPUT);
}

void changeColor()
{
  analogWrite(r_pin, (int)colorToSwitch[0]);
  analogWrite(g_pin, (int)colorToSwitch[1]);
  analogWrite(b_pin, (int)colorToSwitch[2]);

}

void readForColor() {
  while (Serial.available() < 6) {}
  int _first = Serial.read();
  if (_first == 211  ) {
    int _second = Serial.read();
    if ((int)_second == 206) {
      int _third = Serial.read();
      if ((int)_third == 125) {
        colorToSwitch[0] = Serial.read();
        colorToSwitch[1] = Serial.read();
        colorToSwitch[2] = Serial.read();
        changeColor();

      }
    }
  }
}

void loop() {
  if (Serial.available() > 0) {
    readForColor();
  }
}
