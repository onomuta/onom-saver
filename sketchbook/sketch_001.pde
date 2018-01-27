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
  // noStroke(); 
  colorMode(HSB);
  x = 0;
  y = 0;
  w = 1* width;
  h = 1* height;
  x2 = width;
  y2 = height;
}

float v = 20;
void draw(){
  if(w>0 && h>0){
    w = w - random(30 + v) + random(v/2);
    h = h - random(30 + v) + random(v/2);
    // fill((sin(frame/20)+1) *127);
    fill(random(255));

    x = (width - w )/ 2;
    y = (height - h )/ 2;
    // ellipse(width/2 , height/2, w, h);
    rect(x, y, w, h);
    
    x2 = (width - h )/ 2;
    y2 = (height - w )/ 2;
    // ellipse(width/2 , height/2, h, w);
    rect(x2, y2, h, w);
  }else{
    x = 0;
    y = 0;
    w = 2* width;
    h = 2* height;
    x2 = width;
    y2 = height;
  }
  frame ++; 
}
