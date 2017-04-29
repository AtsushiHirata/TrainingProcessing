

//Processing[BETA] sample program 4
//written by Ryoichiro Debuchi 2007

boolean flag = false; //形のフラグ
void setup()
{
  size(300, 300);
  colorMode(RGB, 100);
  rectMode(CENTER);
}

void draw()
{
  background(100);
  fill(90);
  if(flag == true)
    rect(150, 150, 100, 100);
  else
    ellipse(150, 150, 100, 100);
}

void mousePressed()
{
  flag = !flag; //マウスがクリックされたら、フラグを反転する
}