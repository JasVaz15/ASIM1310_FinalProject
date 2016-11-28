class Snake { // will be implementing ArrayList in future commits
  int l= 20;
  int w=20;
  int x=0;
  int y=0;
  int speedX= 2;
  int speedY= 5;
  int snakeMoveTimer=0;
  int snakeMoveDelay=4;



  Snake ( int newX, int newY) {
    x= newX;
    y= newY;
  }
  void drawSnake() {
    fill(0, 123, 0);
    rect(x, y, l, w);
  }
  void moveSnake() { //working on it turning around more clearly 
      if (keyPressed) {
        if (key== CODED) {
          if (keyCode== UP) {
            y-=5;
          }
          if (keyCode== DOWN) {
            y+=5;
          }
          if (keyCode== LEFT) {
            x-=5;
          }
          if (keyCode== RIGHT) {
            x+=5;
          }
        }
      }
  }

  void grow() {
    if (get(x, y)== color(255, 0, 0)) {
      l=l+1;
    }
  }
  void edgeDetection() { //needs to provide smooth turn around
    if (rightCollision() || leftCollision()) {
      x=-x;
    }
    if (bottomCollision() || topCollision()) {
      y=-y;
    }
  }
  boolean rightCollision() {
    boolean hit= false;
    if (x+ (w/2) >= width) {
      hit= true;
    } else {
      hit=false;
    }
    return hit;
  }
  boolean leftCollision() {
    boolean hit= false;
    if (x<0+(w/2)) {
      hit= true;
    } else {
      hit= false;
    } 
    return hit;
  }
  boolean bottomCollision() {
    boolean hit=false;
    if (y>height-(w/2)) {
      hit= true;
    } else {
      hit= false;
    }
    return hit;
  }
  boolean topCollision() {
    boolean hit=false;
    if (y<0+(w/2)) {
      hit= true;
    } else {
      hit= false;
    }
    return hit;
  }
}