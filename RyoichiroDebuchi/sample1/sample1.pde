//Processing[BETA] sample program 1
//written by Ryoichiro Debuchi 2007

final int WINDOW_WIDTH  = 300;
final int WINDOW_HEIGHT = 300;
final int MAX_COLOR_RANGE = 255;

float X;  //X位置
float Y;  //Y位置
float Speed; //スピード
float YMove; //Yの移動量

void settings(){
  size(WINDOW_WIDTH,WINDOW_HEIGHT);
}

void setup()
{
  colorMode(RGB, MAX_COLOR_RANGE);
  background(MAX_COLOR_RANGE);
  rectMode(CENTER);
  frameRate(30);
  X = 0;
  Y = 0;
  Speed = 3; //スピードを決める
  YMove = 20; //Yの移動量を決める
}

void draw()
{
  //fadeToWhite();  //フェードアウト効果をつける場合
  background(MAX_COLOR_RANGE);
  X = X + Speed;
  if(X >= width)    //もしもXが画面幅を超えたら…
  {
    X = 0;  //Xを始めに戻す
    Y += YMove;    //Yの位置をずらす
  }
  fill(0);
  rect(X, Y, 10, 10);  //(X,Y)の位置に四角を描く
}