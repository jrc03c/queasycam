import queasycam.*;

QueasyCam cam;
float counter;

void setup(){
  size(400, 400, P3D);
  
  cam = new QueasyCam(this);
  cam.sensitivity = 0.5;
  cam.speed = 0.1;
  perspective(PI/3, (float)width/height, 0.01, 10000);
  
  counter = 0;
}

void draw(){
  background(51);
  
  counter += 0.005;
  
  for (float x=-10; x<10; x++){
    for (float y=-10; y<10; y++){
      float z = noise(x/33 + counter, y/33 + counter) * 50;
      pushMatrix();
      translate(x * 5, z, y * 5);
      float r = map(x, -10, 10, 100, 255);
      float g = map(y, -10, 10, 100, 255);
      float b = map(z, 0, 10, 100, 255);
      fill(r, g, b);
      box(1);
      popMatrix();
    }
  }
}