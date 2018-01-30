int field_width = screenWidth;
int field_height = screenHeight;
float frame = 0;
int num = 30;
float[] x = new float[num];
float[] y = new float[num];
float[] xs = new float[num];
float[] ys = new float[num];
 
void setup(){
  size(field_width, field_height, P2D);
  // size(1080,1080);
  // size(600,600, P2D);
  frameRate(60);
  noFill();
  smooth();
  colorMode(HSB);
  noStroke();
  rectMode(CENTER);
  
  float s = 40;
  for(int i = num - 1 ; i > 0 ; i--) {
      x[i] = random(width);
      y[i] = random(height);
      xs[i] = (random(2)-1) * s;
      ys[i] = -(random(1)) *s ;
  }
}
int vol =4;
int shift =1;

void draw(){
  blendMode(1);
  background(0); 
  blendMode(2);
  strokeWeight(6);

  for(int i = num - 1 ; i > 0 ; i--) {
    // stroke((((i/num)*255)*0.7 + frame) % 255, 255,200);
    stroke( sin(((i*5 + frame)/50)%1) * 80 + 140, 255,250);

    x[i] = (i/num * width -100) *1.3 ;
    y[i] = (    (noise((frame/4 + i)/20)-0.5)*vol + vol/(vol*2)  )     *    height;
    // if(y[i] < 0){
    //   y[i] = height;
    // }else if(y[i] > height){
    //   y[i] = 0;
    // }
    
    // if(i < num){
      // curve(x[i], y[i], x[i+1], y[i+1], x[i+2], y[i+2], x[i+3], y[i+3]);

      curve(x[i], y[i], x[i+1], y[i+1]-10, x[i+2], y[i+2]+10, x[i+3], y[i+3]);

    // }
  }
  frame++;
}
