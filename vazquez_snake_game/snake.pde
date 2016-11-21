class Snake { // will be implementing ArrayList for next commit
  int l= 20;
  int w=20;
  int x=0;
  int y=0;
  int speedX= 2;
  int speedY= 5;

  Snake ( int newX, int newY) {
    x= newX;
    y= newY;
  }
  void drawSnake() {
    fill(0, 123, 0);
    rect(x, y, l, w);
  }
  /*void moveSnake() { //working on 
   
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
   }*/

  void grow() {
    if (get(x, y)== color(255, 0, 0)) {
      l=l+1;
    }
  }
  void changeSpeed() {
    x=x+ speedX;
    //y= y+ speedY;
  }
  void edgeDetection() {
    if (rightCollision() || leftCollision()) {
      speedX=-speedX;
    }
    //if (bottomCollision() || topCollision()) {
    // speedY=-speedY;
    //}
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
  //for later development 
  /* boolean bottomCollision() {
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
   }*/
}