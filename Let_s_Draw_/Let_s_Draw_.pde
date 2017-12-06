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
    if (key == CODED) {
      if (keyCode == UP) {
          erase();
      if (keyCode == DOWN) {
        art();
        }
      }
    }
  }

void erase() {
  stroke(255);
  strokeWeight(x+5);
  if (mousePressed) {
  point (mouseX, mouseY);}
}

void art() {
  stroke(0);
  strokeWeight(x);
  if (mousePressed) {
    point (mouseX, mouseY);
  }
}
/*
Things to add
  Color Changer
  Weight Changer
  Clear all button
*/