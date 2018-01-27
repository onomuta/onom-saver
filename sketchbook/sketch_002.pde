int field_width = screenWidth;
int field_height = screenHeight;

int num = 10;

float[] x = new float[num];
float[] y = new float[num];
float[] s = new float[num];
float[] iro = new float[num];


void setup(){
  size(field_width, field_height);
  // size(400,400);
  background(50);
  noStroke();
  
  for(int i = 0 ; i < num ; i++) {
    x[i] = 0;
    y[i] = random(height);
    float hoge = random(1);
    iro[i] = round(hoge * hoge)* 255;
    s[i] = random(30)+10;
  }
}

void draw(){
  
  
  
  
  
   for(int i = num - 1 ; i > 0 ; i--) {
    fill(iro[i]);
    rect(x[i], y[i], s[i]*2 + 2, s[i]);
    x[i] = x[i] + s[i]*2;
    
    if(x[i] > width){
      x[i] = 0;
      y[i] = random(height);
      float hoge = random(1);
      iro[i] = round(hoge * hoge)* 255;
      s[i] = random(30)+10;
    } 
  }
  
  
  
}