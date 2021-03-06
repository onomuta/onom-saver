int field_width = screenWidth;
int field_height = screenHeight;
float frame = 0;
int num = 10;
float[] x = new float[num];
float[] y = new float[num];
float[] w = new float[num];
float[] h = new float[num];
 
void setup(){
  size(field_width, field_height);
  // size(1080,1080);
  frameRate(60);
  noFill();
  smooth();
  colorMode(HSB);
  noStroke();
  rectMode(CENTER)
}

void draw(){
  background(0); 
  for(int i = num - 1 ; i > 0 ; i--) {
      x[i] = random(width);
      y[i] = random(height);
      w[i] = random(width/4);
      h[i] = random(height/4);
      fill(255);
     rect(x[i], y[i], w[i], h[i]);
  }
  frame++;
}