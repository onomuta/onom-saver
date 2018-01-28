int field_width = screenWidth;
int field_height = screenHeight;
float frame = 0;
int num = 400;
float[] x = new float[num];
float[] y = new float[num];
float[] w = new float[num];
float[] h = new float[num];

float[] xs = new float[num];
float[] ys = new float[num];

float[] scale = new float[num];
float[] clr = new float[num];
 
void setup(){
  size(field_width, field_height,P2D);
  frameRate(60);
  colorMode(HSB);
  
  noStroke();
  rectMode(CENTER);
  for(int i = num - 1 ; i > 0 ; i--) {
      x[i] = random(width);
      y[i] = random(height);
      clr[i] = random(255);
      scale[i] = random(8) + 1;
      
  }  
}

void draw(){
  blendMode(REPLACE);
  background(0); 
  blendMode(ADD);
  fill(255);
  for(int i = num - 1 ; i > 0 ; i--) {
    xs[i] = (noise(frame/1000 + i*1000)-0.5) * 3;
    ys[i] = -noise(frame/1000 + i*2000) * 0.8;
    
    x[i] += xs[i];
    y[i] += ys[i];
    
    // scale[i] = noise(frame/500 + i*3000) * 10;

    // rect(x[i], y[i], scale[i], scale[i]);
    fill(clr[i]%30 +120,255,100);
    ellipse(x[i], y[i], scale[i] +6, scale[i] +6);


    fill(clr[i]%30 +120,255,180);
    ellipse(x[i], y[i], scale[i], scale[i]);
    
    if(x[i] > width + scale[i]/2 +3){
      x[i] = 0 -(scale[i]/2 +3);
    }else if(x[i] < 0 -(scale[i]/2 +3)){
      x[i] = width + scale[i]/2 +3;
    }
    if(y[i] > height + scale[i]/2 +3){
      y[i] =0 -(scale[i]/2 +3);
    }else if(y[i] < 0 -(scale[i]/2 +3)){
      y[i] = height + scale[i]/2 +3;
    }

  }


  rect(10,10,10,10);
  frame++;
}
