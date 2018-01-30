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



void draw() {

 background(255);

fill(0);

allPx = width*height;

 h = hour();
 m = minute();
 s = second();
 ms = millis();

 now = h*60*60*1000 + m*60*1000 + s*100 + ms;

 nowPx = now/day * allPx;

 rect(0,0,width, (nowPx - nowPx%width)/width);
 rect(0,  (nowPx - nowPx%width)/width,nowPx%width,1);
 text(nowPx,10,10);

}