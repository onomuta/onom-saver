int field_width = screenWidth;
int field_height = screenHeight;

float xstart, xnoise, ynoise;
void setup(){
  //size(720, 480);
  //size(1000,1000,OPENGL);
  size(field_width, field_height,P2D);
  smooth();
  colorMode(HSB, 100);
  noStroke();
  //noFill();
  //frameRate(10);
  frameRate(60);
  background(0);
  xstart = 0;
  xnoise = xstart;
  ynoise = 0;
  
}

void drawPoint(float x, float y, float val){
  fill(val*150, 100,100);
  float size = 100 * val* val - 20;
  // rect(x + (20-size)/2, y + (20 - size)/2, size, size);
  rect(-size/2, -size/2, size, size);
  
}
float frame= 0;

float xScroll = 0;
float yScroll = 0;
void draw(){
  //background(0);
  //noStroke();
  fill(0);
  rect(0,0,width,height);
  //xScroll += 0.05;
  yScroll += 0.01;
  //xnoise = xstart;
  ynoise = 0;
  
  for(int y = 0; y <= height; y +=20){
     
    ynoise += 0.1;
    xnoise = xstart;
    for(int x = 0; x <= width; x += 20 ){
      xnoise += 0.1;
      pushMatrix();
        translate(x, y);
        rotate(noise(xnoise + xScroll, ynoise + yScroll, frame)*4);
        
        drawPoint(0, 0, noise(xnoise + xScroll, ynoise + yScroll, frame));
        
      popMatrix();
      
    }
  } 
  frame += 0.03; 
}