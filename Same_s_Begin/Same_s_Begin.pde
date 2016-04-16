float bx = 300;
float by = 300;
float vx = 0;
float vy = 5;


void setup(){
  size(600, 600);
  frameRate(60);
}
void draw(){
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
  
  rect(255, 30, 90 ,12);
  
  rect(255, 560, 90, 12);
  
  rect(30, 280, 12, 90);
  
  rect(550, 280, 12, 90);
    
/*  fill(0);
  rect();
  
  fill(0);
  rect();
  
  fill(0);
  rect();
  
  fill(0);
  rect();
 */ 
}