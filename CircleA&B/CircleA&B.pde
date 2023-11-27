void setup() {
  size(800, 800);
  background(#eeeeee);
  // slow down the frame rate so we can see the effect
  frameRate(2);
  // noLoop();
}


void draw() {
  background(random(255), random(255), random(255));
  translate(width/2, height/2);
  for (int n = 0; n < 30; n++) {
    stroke(random(255), random(255), random(255));
    for (int a = 0; a < 360; a += 1) {
      float x1 = random(50, 150);
      float x2 = random(150, 350);
      pushMatrix();
      rotate(radians(a));
      strokeCap(CORNER);
      strokeWeight(4);
      line(x1, 0, x2, 0);
      popMatrix();
    }
  }
  saveFrame("frame/B_####.jpg");
}

void keyPress() {
  redraw();
}
