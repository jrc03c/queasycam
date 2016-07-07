**QueasyCam** is a super-simple first-person-shooter camera for 3D Processing sketches. It steals its name and its desired ease of use from [PeasyCam](http://mrfeinberg.com/peasycam/). A QueasyCam camera can be controlled using the mouse and WASD keys (as well as Q and E for upward and downward motion).

Here's an example. Setting the camera speed and sensitivity are optional.

```java
import queasycam.*;

QueasyCam cam;

void setup(){
	size(400, 400, P3D);
	cam = new QueasyCam(this);
	cam.speed = 5;              // default is 3
	cam.sensitivity = 0.5;      // default is 2
}

void draw(){
	background(0);
	box(200);
}
```

