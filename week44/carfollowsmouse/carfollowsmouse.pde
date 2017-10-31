int rotation;
void setup()
{
  size(900, 400);      // def. window size
  background(255, 255, 255);
}

void draw()
{
  car(200, 200);
  wheel(300, 300);
  rotation++;
}

void car(int x, int y) {
  fill(100, 0, 0);
  noStroke();
  beginShape();
  vertex(0, 0);
  vertex(5, -50);
  vertex(50, -50);
  vertex(70, -80);
  vertex(150, -80);
  vertex(190, -50);
  vertex(265, -45);
  vertex(270, 0);
  vertex(0, 0);
  endShape();
  wheel(60, 0);
  wheel(210, 0);
}

void wheel(int x, int y) {
  int radius = 25;
  fill(0, 100, 0);
  stroke(0);
  strokeWeight(7);
  ellipse(0, 0, radius*2, radius*2);
  strokeWeight(4);
  line(0-radius, 0, 0+radius, 0);
  line (0, 0-radius, 0, 0+radius);
  noStroke();
}
