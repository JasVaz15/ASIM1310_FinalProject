class Board {
  float x=0;
  float y=0;
  float size= 30;

  Board(float newX, float newY, float newSize) {
    x=newX;
    y= newY;
    size= newSize;
  }
  void drawSquares() {
    fill(255);
    rect( x, y, size, size);
  }
}