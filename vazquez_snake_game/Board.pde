class Board {
  int w=30;
  int h=30;
  int squareSize=20;


  Board() {
  }

  void displayBoard() {
    background(255);
    for ( int i=0; i<w; i++)
      line (i* squareSize, 0, i*squareSize, height);
    for (int i=0; i< h; i++)
      line( 0, i*squareSize, width, i*squareSize);
  }
}