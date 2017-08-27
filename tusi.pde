
//GLOBALS
int w = 800;
float r = (w * .75) / 2;
int count;
float period = 120;

void setup() {
  frameRate(60);
  count = 0;
  size(800,800);
  smooth();
}

void draw() {
  translate(w/2,w/2);
  count++;
  background(255);
  fill(0);
  drawBaseCircle();
  drawInnerCircles();
}

void drawBaseCircle() {
  fill(0);
  stroke(0);
  ellipse(0, 0, w * .75, w * .75);
  stroke(155);
  line(0, -r, 0, r);
  line(-r, 0, r, 0);
  line(-r, 0, r, 0);
  
  for (float i = 0; i <= 360; i+=22.5) {
    float x = 0 + cos(radians(i)) * r;
    float y = 0 + sin(radians(i)) * r;
    line(0, 0, x, y);
  }
}

void drawInnerCircles() {
  fill(255);
  stroke(255);
  float y_val = ((w/2) * .715) * sin(TWO_PI * count / period);
  float x_val = ((w/2) * .715) * cos(TWO_PI * count / period);  
  ellipse(0, y_val, w * .03, w * .03);
  ellipse(x_val, 0, w * .03, w * .03);
}
