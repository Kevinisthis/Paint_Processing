//startup
void settings() {
  size(600,600);
}

int x;
int R;
int G;
int B;

void setup() {
 background(255);
 x = 15;
 R = 255;
 G = 150;
 B = 150;
}


//draw
void draw() {
  art();
  erase();
}

//erase tool
void erase() {
  if (keyCode == LEFT) {
    stroke(255);
    strokeWeight(x+5);
  }
  if (mousePressed) {
  point (mouseX, mouseY);
  }
}

//draw resume
void art() {
  stroke(R,G,B);
  strokeWeight(x);
  if (mousePressed) {
    point (mouseX, mouseY);
  }
}

void keyReleased() {
  if (keyCode == UP) {
    strokeWG();
  }
  if (keyCode == DOWN) {
    strokeWL();
  }
  if (keyCode == LEFT) {
    erase();
  }
  if (keyCode == RIGHT) {
    CLEAR();
    draw();
  }
}
void keyPressed() {
  if (key == 'q' || key == 'Q') {
    ColorUpR();
  }
  if (key == 'w' || key == 'W') {
    ColorUpG();
  }
  if (key == 'e' || key == 'E') {
    ColorUpB();
  }
  if (key == 'a' || key == 'A') {
    ColorDownR();
  }
  if (key == 's' || key == 'S') {
    ColorDownG();
  }
  if (key == 'd' || key == 'D') {
    ColorDownB();
  }
  print(key);
}

//clear all
void CLEAR() {
  setup();
}

//increase strokeweight
void strokeWG() {
      x = x+1;
      strokeWeight(x);
}

//decrease strokeweight
void strokeWL() {
  if (x >= 1) {
      x = x-1;
      strokeWeight(x);
  }
}

//color changer
void ColorUpR() {
  stroke(R,G,B);
  if (R <=249) {
    stroke(R+5, G, B);
  }
}

void ColorUpG() {
  stroke(R,G,B);
  if (G <=249) {
    stroke(R, G+5, B);
  }
}

void ColorUpB() {
  stroke(R,G,B);
  if (B <=249) {
    stroke(R, G, B+5);
  }
}

void ColorDownR() {
  if (R >=6) {
    stroke(R-5, G, B);
  }
}

void ColorDownG() {
  if (G >=6) {
    stroke(R, G-5, B);
  }
}

void ColorDownB() {
  if (B >=6) {
    stroke(R, G, B-5);
  }
}