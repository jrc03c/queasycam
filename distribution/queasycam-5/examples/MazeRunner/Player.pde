class Player extends QueasyCam {
  PVector dimensions;
  PVector velocity;
  PVector gravity;
  boolean grounded;
  
  Player(PApplet applet){
    super(applet);
    speed = 0.04;
    dimensions = new PVector(1, 3, 1);
    velocity = new PVector(0, 0, 0);
    gravity = new PVector(0, 0.01, 0);
    grounded = false;
  }
  
  void update(){
    velocity.add(gravity);
    position.add(velocity);
    
    if (grounded && keyPressed && key == ' '){
      grounded = false;
      velocity.y = -0.5;
      position.y -= 0.1;
    }
  }
}