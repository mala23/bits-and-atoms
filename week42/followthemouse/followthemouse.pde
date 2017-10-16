void setup()
{
  size(300,300);
  background(0);
}
 
void draw()
{
  background(0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(mouseX, mouseY, 60, 60);
}
