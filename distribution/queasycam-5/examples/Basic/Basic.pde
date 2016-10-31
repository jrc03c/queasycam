import queasycam.*;

QueasyCam cam;

void setup(){
  size(400, 400, P3D);
  cam = new QueasyCam(this);
}

void draw(){
  background(0);
  box(200);
}