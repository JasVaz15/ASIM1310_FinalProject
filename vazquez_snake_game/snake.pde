class Snake extends Board {
  ArrayList<Integer>x= new ArrayList<Integer>(), y= new ArrayList<Integer>();
  int direction= 2;
  int [] directionX= {0, 0, 1, -1}, directionY= {1, -1, 0, 0};



  Snake() {
    x.add(5);
    y.add(5);
  }
  void displaySnake() {
    super.displayBoard();
    for (int i=0; i< x.size(); i++) {
      fill(0, 255, 0);
      rect(x.get(i)*squareSize, y.get(i)*squareSize, squareSize, squareSize);
    }
    moveSnake();
  }

  void moveSnake() {
    if (frameCount%6==0) {
      if (keyCode== UP) {
        y.add(0, y.get(0)-1);
        x.add(0, x.get(0));
      } else if (keyCode==DOWN) {
        y.add(0, y.get(0)+1);
        x.add(0, x.get(0));
      } else if (keyCode==LEFT) {
        x.add(0, x.get(0)-1);
        y.add(0, y.get(0));
      } else if (keyCode==RIGHT) {
        x.add(0, x.get(0)+1);
        y.add(0, y.get(0));
      }
      if (keyCode==UP || keyCode==DOWN || keyCode== LEFT || keyCode==RIGHT) {
        x.remove(x.size()-1);
        y.remove(y.size()-1);
      }
    }
  }
}