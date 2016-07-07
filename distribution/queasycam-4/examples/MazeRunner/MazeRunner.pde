/*
 * NOTE: This doesn't generate real mazes; they're just
 * empty spaces in which to walk around. Enjoy! :)
 *
 */

import queasycam.*;

Player player;
Maze maze;

void setup(){
  size(600, 600, P3D);
  strokeWeight(2);
  
  player = new Player(this);
  maze = new Maze(20);
  maze.setPlayerAtStart(player);
}

void draw(){
  background(51);
  maze.update();
  maze.display();
  player.update();
}