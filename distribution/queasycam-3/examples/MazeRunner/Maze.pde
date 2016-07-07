class Maze {
  Block[][] blocks;
  Block start;
  Block end;
  
  Maze(int size){
    blocks = new Block[size][size];
    
    for (int i=0; i<size; i++){
      for (int j=0; j<size; j++){
        float x = i * 5;
        float y = 0;
        float z = j * 5;
        blocks[i][j] = new Block(x, y, z, 5, 5, 5);
      }
    }
    
    int row = int(random(1, size-1));
    int col = int(random(1, size-1));
    start = blocks[row][col];
    
    for (int i=0; i<size*size*size/10; i++){
      if (!blocks[row][col].visited) blocks[row][col].moveDown();
      blocks[row][col].visited = true;
      
      if (random(0, 1) < 0.5){
        if (random(0, 1) < 0.5 && row > 1) row -= 1;
        else if (row < size-2) row += 1;
      } else {
        if (random(0, 1) < 0.5 && col > 1) col -= 1;
        else if (col < size-2) col += 1;
      }
    }
  }
  
  void update(){
    for (int i=0; i<blocks.length; i++){
      for (int j=0; j<blocks[i].length; j++){
        blocks[i][j].update();
      }
    }
  }
  
  void display(){
    for (int i=0; i<blocks.length; i++){
      for (int j=0; j<blocks[i].length; j++){
        blocks[i][j].display();
      }
    }
  }
  
  void setPlayerAtStart(Player player){
    player.position = PVector.add(start.position, new PVector(0, -15, 0));
  }
}