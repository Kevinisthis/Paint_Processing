//startup
void settings() {
  size(1000,1000);
}

void setup() {
 background(255);
 frameRate (300);
}

//draw
void draw() {
  stroke(0);
  strokeWeight(2);
  if (mousePressed) {
    point (mouseX, mouseY);
  }
}

/*
Things to add
  Erase Tool
  Color Changer
  Weight Changer
  Clear all button
*/