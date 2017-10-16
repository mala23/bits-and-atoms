void setup()
{
  size(600,600);
  background(0);
}
 
void draw()
{
  background(0);
  marble();
}

void marble()
{
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(mouseX, mouseY, 60, 60);
}
