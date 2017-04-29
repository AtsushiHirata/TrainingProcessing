//Processing[BETA] sample program 3
//written by Ryoichiro Debuchi 2007

void setup()
{
  size(300, 300);
  colorMode(RGB, 100);
}

void draw()
{
  //fadeToWhite();
  background(100);
  fill(90);
  ellipse(mouseX, mouseY, 100, 100);
}