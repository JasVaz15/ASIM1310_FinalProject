class Food {

  int x=0;
  int y=0;
  int size;

  Food( int newX, int newY) {
    x= newX;
    y= newY;
    size= 20;
  }
  void foodEaten() {
    if (get(x, y)== color(0, 123, 0)) {
      delay(2);
      x= (int) random(350);
      y= (int) random (550);
    }
  }

  void display() {
    for (int i=0; i<cols; i++) {
      for (int j=0; j<rows; j++) {
        fill(255, 0, 0);
        rect( x, y, size, size);
      }
    }
  }
}