<hr>

**NOTE: THIS PROJECT IS NO LONGER ACTIVELY MAINTAINED. I'LL LEAVE IT UNARCHIVED SO THAT PEOPLE CAN CREATE AND COMMENT ON ISSUES WITH EACH OTHER, BUT I DON'T PLAN TO MAKE ANY MORE CHANGES TO IT ANY TIME SOON. THANKS!**

<hr>

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

- - -

**API**

Here's the full API.

`controllable` = a boolean that lets you turn on / off the mouse / keyboard controls

`speed` = a float value that represents the speed coefficient of the camera

`velocity` = a 3D PVector that represents the direction and magnitude of movement of the camera in space

`sensitivity` = a float value that represents the mouse sensitivity coefficient of the camera

`position` = a 3D PVector that represents the position of the camera

`pan` = a float value that represents the rotation of the camera around the vertical axis

`tilt` = a float value that represents the rotation of the camera around the horizontal axis

`friction` = a float value that represents how much the camera slides as it moves around

`getForward()` = returns the forward-pointing PVector of the camera

`getRight()` = returns the rightward-pointing PVector of the camera
