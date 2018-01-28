int field_width = screenWidth;
int field_height = screenHeight;
float frame = 0;
int num = 40;
float[] x = new float[num];
float[] y = new float[num];
float[] w = new float[num];
float[] h = new float[num];

float[] xs = new float[num];
float[] ys = new float[num];

float[] scale = new float[num];
float[] scaleS = new float[num];
float[] shift = new float[num];
float[] shiftS = new float[num];


float[] lw = new float[num];
float[] clr = new float[num];
 
void setup(){
  size(field_width, field_height, P2D);
  // size(1080,1080);
  // size(600,600, P2D);
  frameRate(60);
  noFill();
  smooth();
  colorMode(HSB);
  // strokeCap(SQUARE);
  //stroke(255);  
  noStroke();
  rectMode(CENTER);
  
  float s = 40;
  for(int i = num - 1 ; i > 0 ; i--) {
      x[i] = random(width);
      y[i] = random(height);
      xs[i] = (random(2)-1) * s;
      ys[i] = -(random(1)) *s ;
 
      w[i] = random(width/2);
      clr[i] = random(255);
      lw[i] = random(20) + 2;
      
      scale[i] = random(sqrt(2*max(width, height) * max(width, height)) + 4);
      scaleS[i] = random(10) +2;
      shift[i] = random(PI *2);
      shiftS[i] = (random(2) - 1)/20;
      
  }
  
  
}

void draw(){
  blendMode(1);
  background(0); 
  blendMode(2);
  
  for(int i = num - 1 ; i > 0 ; i--) {
    //fill(i %2 * 255);
    
    xs[i] = (noise(frame/1000 + i*1000)-0.5) * 3;
    ys[i] = -noise(frame/1000 + i*2000) * 2;
    
    x[i] += xs[i];
    y[i] += ys[i];


      shift[i] += shiftS[i];
    
     //fill(clr[i]);
     scale[i] += scaleS[i];
     
     if(scale[i] > sqrt(2*max(width, height) * max(width, height)) + 4){
       scale[i] = 0;
       scaleS[i] = random(10) +2;
     }
     
     strokeWeight(lw[i]);
    //  stroke(i % 2 *255);
     stroke((i % 127)*2 +130,255,255);
    //  stroke((i+i+i)/3/num *255);
     arc(width/2,  height/2, scale[i] , scale[i] , shift[i], shift[i] + PI * 0.5);

     arc(width/2,  height/2, scale[i] , scale[i] , shift[i] + PI, shift[i] + PI + PI * 0.5);


  }
  frame++;
}


void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}