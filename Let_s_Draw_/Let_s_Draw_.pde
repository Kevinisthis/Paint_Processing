//startup
void settings() {
  size(600,600);
}

int x;
void setup() {
 background(255);
 x = 15;
}


//draw
void draw() {
  art();
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
  stroke(0);
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

/*
Things to add
  Color Changer
*/