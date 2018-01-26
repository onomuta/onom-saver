int field_width = screenWidth;
int field_height = screenHeight;
float x, y, w, h;
float x2, y2;

float frame = 0;
void setup(){
  //size(1080, 1080);
  size(field_width, field_height);
  smooth();
  background(0);
  noStroke(); 
  colorMode(HSB);
  x = 0;
  y = 0;
  w = 2* width;
  h = 2* height;
  x2 = width;
  y2 = height;
}

float v = 40;
void draw(){
  if(w>0 && h>0){
    w = w - random(10 + v) + random(v);
    h = h - random(10 + v) + random(v);
    fill((sin(frame/20)+1) *127);
    x = (width - w )/ 2;
    y = (height - h )/ 2;
    ellipse(width/2 , height/2, w, h);
    
    x2 = (width - h )/ 2;
    y2 = (height - w )/ 2;
    ellipse(width/2 , height/2, h, w);
  }
  frame ++; 
}
