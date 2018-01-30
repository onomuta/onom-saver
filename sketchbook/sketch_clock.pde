int field_width = screenWidth;
int field_height = screenHeight;
void setup() {

    size(field_width, field_height);

    noStroke();

  frameRate(60);
}
float h;
float m;
float s;
float ms;
float day = 24*60*60*1000;
float now;
float nowPx;
float allPx = width*height;

float gap = 0;

boolean flag = true;

int count = 0;

float old = 0;
float x1,x2,x3,x4,y1,y2,y3,y4;

float frame = 0;

void draw() {
noStroke();
  background(255);


  allPx = width*height;

  h = hour();
  m = minute();
  s = second();
  ms = millis();
  if(s != old && flag == false){
    gap = ms%1000;
    // flag = true;
  }
  old = s;
  flag=false;

  now = h*60*60*1000 + m*60*1000 + s*1000 + (ms - gap)%1000;

  nowPx = now/day * allPx;
  fill(0);
  rect(0,0,width, (nowPx - nowPx%width)/width);
  rect(0, (nowPx - nowPx%width)/width,nowPx%width,1);
  fill(255);
  // rect(nowPx%width,((nowPx - nowPx%width)/width)-10,1,10);
  // rect(nowPx%width,((nowPx - nowPx%width)/width)-40,1,41);

  noFill();
  stroke(255);
  x1 = nowPx%width - 20;
  x2 = nowPx%width - 100 + noise(frame/500 + 123.456) * 50;
  x3 = nowPx%width - 100 - noise(frame/500) * 50;
  x4 = nowPx%width ;

  y1 = -100;
  y2 = 0;
  y3 = ((nowPx - nowPx%width)/width);
  y4 = ((nowPx - nowPx%width)/width);
  bezier(x1,y1,x2,y2,x3,y3,x4,y4);


  bezier( x1+width, y1-1, x2+width, y2-1, x3+width, y3-1, x4+width, y4-1);

  //  fill(255);
  //  text(h,10,10);
  //  text(m,10,20);
  //  text(s,10,30);
  //  text(ms%1000,0,40);


  //   text(gap,0,50);

  frame ++;
}