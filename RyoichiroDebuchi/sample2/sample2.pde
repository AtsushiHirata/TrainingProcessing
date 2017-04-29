//Processing[BETA] sample program 2
//written by Ryoichiro Debuchi 2007
float X;
float Y;
float R;
int Count;  //カウンター

void setup()
{
  size(300, 300);
  colorMode(RGB, 100);
  frameRate(30); 
  Count = 0;
  X = 150;
  Y = 150;
  R = 50;
}

void draw()
{
  background(0); 
  int col;

 if(Count >= 100)  //明るさが最大値を超えたら暗くしていく
   col = 200 - Count;
 else
   col = Count;

 noFill();

 strokeWeight(4);
 stroke(0, 0, col);
 ellipse(X, Y, R, R);//(X,Y)の位置に描く

 if(Count > 200)
 {
   Count = 0;  //元に戻す
   //新しい円の位置と半径を決める
   X = random(width);
   Y = random(height);
   R = random(width) / 2;
 }
 Count++; //カウンターを増やす
}