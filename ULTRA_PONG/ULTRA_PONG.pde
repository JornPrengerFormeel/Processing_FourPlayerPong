float bx = 300;
float by = 300;
float vx = 0;
float vy = 5;
float pu = 255;
float pd = 255;
float pl = 280;
float pr = 280;

void setup(){
  size(600, 600);
  frameRate(60);
}
void draw(){
  if(by>=560 && bx>=pd && bx<=pd+90){
    vy=-vy;
    if(keyPressed && key=='c')
    {
      vx-=2;
    }
    if(keyPressed && key=='v')
    {
      vx+=2;
    }
       
  }
  if(by<=40 && bx>=pu && bx<=pu+90){
    vy=-vy;
    if(keyPressed && key=='a')
    {
      vx-=2;
    }
    if(keyPressed && key=='s')
    {
      vx+=2;
    }
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
 
  if(keyPressed){
    if(key == 'a')
    {
      pu-=4;
    }
    if(key == 's')
    {
      pu+=4;
    }
    if(key == 'c')
    {
     pd-=4; 
    }
    if(key == 'v')
    {
     pd+=4; 
    }
    if(key == 'y')
    {
     pl-=4; 
    }
    if(key == 'u')
    {
     pl+=4; 
    }
    if(key == 'k')
    {
     pr-=4;
    }
    if(key == 'l')
    {
     pr+=4; 
    }
  }
  rect(pu, 30, 90 ,10);
  
  rect(pd, 560, 90, 10);
  
  rect(30, pl, 10, 90);
  
  rect(560, pr, 10, 90);
    
}