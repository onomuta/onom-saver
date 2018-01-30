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
void draw() {

 background(255);

fill(0);

allPx = width*height;

 h = hour();
 m = minute();
 s = second();
 ms = millis();

 now = h*60*60*1000 + m*60*1000 + s*1000 + (ms - gap)%1000;

 nowPx = now/day * allPx;

 rect(0,0,width, (nowPx - nowPx%width)/width);
 rect(0,  (nowPx - nowPx%width)/width,nowPx%width,1);


if(s != old && flag == false){
  gap = ms%1000;
  flag = true;
}
old = s;
flag=false;


//  fill(255);
//  text(h,10,10);
//  text(m,10,20);
//  text(s,10,30);
//  text(ms%1000,0,40);


//   text(gap,0,50);

}