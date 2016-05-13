float bx = 300;
float by = 300;
float vx = 0;
float vy = 5;
float pu = 255;
float pd = 255;
float pl = 280;
float pr = 280;
boolean gameOver = false;
boolean walld = false;
boolean wallu = false;
boolean wallr = false;
boolean walll = false;

void setup() {
  size(600, 600);
  frameRate(60);
}
void draw() {
  if (by>=560 && bx>=pd && bx<=pd+90) {
    vy=-vy;
    if (keyPressed && key=='c')
    {
      vx-=2;
    }
    if (keyPressed && key=='v')
    {
      vx+=2;
    }
  }
  else if(by >= 560){
    gameOver = true;
    walld = true;
  }
  
  if (by<=40 && bx>=pu && bx<=pu+90) {
    vy=-vy;
    if (keyPressed && key=='a')
    {
      vx-=2;
    }
    if (keyPressed && key=='s')
    {
      vx+=2;
    }
  }
  else if(by >= 40){
    gameOver = true;
    wallu =true;
  }

  if (bx <= 40 && by>=pl && by<=pl+90) {
    vx=-vx;
    if (keyPressed && key=='y')
    {
      vy-=2;
    }
    if (keyPressed && key=='u')
    {
      vy+=2;
    }
  }
  else if(bx <= 40)
  {
   gameOver = true; 
   walll = true;
  }

  if (bx >= 560 && by>=pr && by<=pr+90) {
    vx=-vx;
    if (keyPressed && key=='k')
    {
      vy-=2;
    }
    if (keyPressed && key=='l')
    {
      vy+=2;
    }
  }
  else if(bx <= 560)
  {
   gameOver = true;
   wallr = true;
  }

  background(0);
  by+=vy;
  bx+=vx;

  fill(#F9FA05);
  noStroke();
  ellipse(bx, by, 15, 15);

  fill(255);
  rect(0, 0, 40, 40);

  rect(560, 0, 40, 40);

  rect(0, 560, 40, 40);

  rect(560, 560, 40, 40);

  if (keyPressed) {
    if (key == 'a')
    {
      pu-=4;
    }
    if (key == 's')
    {
      pu+=4;
    }
    if (key == 'c')
    {
      pd-=4;
    }
    if (key == 'v')
    {
      pd+=4;
    }
    if (key == 'y')
    {
      pl-=4;
    }
    if (key == 'u')
    {
      pl+=4;
    }
    if (key == 'k')
    {
      pr-=4;
    }
    if (key == 'l')
    {
      pr+=4;
    }
  }
  rect(pu, 30, 90, 10);

  rect(pd, 560, 90, 10);

  rect(30, pl, 10, 90);

  rect(560, pr, 10, 90);
}