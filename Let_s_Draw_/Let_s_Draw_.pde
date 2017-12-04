//startup
void settings() {
  size(1000,1000);
}

void setup() {
 background(255);
 frameRate (500000);
}

//draw
void draw() {
  stroke(0);
  strokeWeight(2);
  if (mousePressed) {
    point (mouseX, mouseY);}
    if (key == CODED) {
      if (keyCode == UP) {
          stroke(255);
          strokeWeight(5);
          if (mousePressed) {
              point (mouseX, mouseY);}
      if (keyCode == DOWN) {
        stroke(0);
        strokeWeight(2);
        if (mousePressed) {
              point (mouseX, mouseY);
        }
      }
    }
  }
}

/*
Things to add
  Color Changer
  Weight Changer
  Clear all button
*/