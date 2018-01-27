int field_width = screenWidth;
int field_height = screenHeight;
float frame = 0;
int num = 800;
float[] x = new float[num];
float[] y = new float[num];
float[] w = new float[num];
float[] h = new float[num];

float[] xs = new float[num];
float[] ys = new float[num];

float[] scale = new float[num];
float[] clr = new float[num];
 
void setup(){
  size(field_width, field_height);
  frameRate(60);
  colorMode(HSB);
  noStroke();
  rectMode(CENTER);
  for(int i = num - 1 ; i > 0 ; i--) {
      x[i] = random(width);
      y[i] = random(height);
      clr[i] = random(255);
      scale[i] = random(5) + 1;
      
  }  
}

void draw(){
  background(0); 
  fill(255);
  for(int i = num - 1 ; i > 0 ; i--) {
    xs[i] = (noise(frame/1000 + i*1000)-0.5) * 3;
    ys[i] = -noise(frame/1000 + i*2000) * 1;
    
    x[i] += xs[i];
    y[i] += ys[i];
    
    fill(clr[i]);
    // scale[i] = noise(frame/500 + i*3000) * 10;

    rect(x[i], y[i], scale[i], scale[i]);
    
    if(x[i] > width){
      x[i] =0;
    }else if(x[i] < 0){
      x[i] = width;
    }
    if(y[i] > height){
      y[i] =0;
    }else if(y[i] < 0){
      y[i] = height;
    }

  }


  rect(10,10,10,10);
  frame++;
}
