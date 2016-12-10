class Snake extends Board {

  ArrayList<Integer>x= new ArrayList<Integer>(), y= new ArrayList<Integer>();
  long timeToMoveSnake=100;
  long timeForNextMove=100;
  int appleX=10;
  int appleY=10;
  int score= 0;
  boolean gameOver= false; 

  Snake() {
    x.add(5);
    y.add(5);
  }

  void displaySnake() {
    super.displayBoard();
    for (int i=0; i< x.size(); i++) {
      fill(95, 193, 95);
      rect(x.get(i)*squareSize, y.get(i)*squareSize, squareSize, squareSize);
    }
    moveSnake();
  }

  void moveSnake() { // timer based movement for snake, keyboard handling, snake's eating functionality, and snake's "death"
    if (!gameOver) {
      displayApple();
      if (millis()>=timeToMoveSnake) {
        timeToMoveSnake= timeToMoveSnake+timeForNextMove;
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
        if (x.get(0)<0 || y.get(0)<0 || x.get(0)>= w|| y.get(0) >=h) { // walls hit = loss
          gameOver=true;
        }
        for ( int i=1; i< x.size(); i++) { //snake hits itself = loss
          if (x.get(0)==x.get(i) && y.get(0)==y.get(i)) { 
            gameOver=true;
          }
        }
        if (x.get(0)==appleX && y.get(0)==appleY) { // point is obtained when snake "eats" (snake's position = apple's position) food; bite sound is payed
          p.rewind();
          p.play();
          appleX= int (random(0, w));
          appleY= int (random(0, h));
          score++;
        } else if (keyCode==UP || keyCode==DOWN || keyCode== LEFT || keyCode==RIGHT) {
          x.remove(x.size()-1);
          y.remove(y.size()-1);
        }
      }
    } else {
      lossScreen();
      resetBoard();
    }
  }

  void displayApple() { 
    fill(255, 0, 0);
    rect(appleX*squareSize, appleY*squareSize, squareSize, squareSize);
  }

  void lossScreen() { // When loss is detected a black screen will appear with score and instructions to play again
    background(0);
    textAlign(CENTER, TOP);
    textSize(30);
    fill(0, 255, 0);
    text("score:", width/2-10, 20);
    text(score, width/2+50, 20);
    textAlign (CENTER);
    textSize(80);
    text("GAME OVER", width/2, height/2);
    textSize(20);
    text("PRESS SPACE BAR TO PLAY AGAIN", width/2, height/2+20);
  }

  void resetBoard() { // Resets board when spacebar is pressed 
    if (keyPressed&&key==' ') {
      x.clear();
      y.clear();
      x.add(5);
      y.add(5);
      appleX= int(random(0, w));
      appleY= int(random(0, h));
      score=0;
      gameOver=false;
    }
  }
}