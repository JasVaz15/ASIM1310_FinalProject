class Snake extends Board {
  ArrayList<Integer>x= new ArrayList<Integer>(), y= new ArrayList<Integer>();
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
      fill(0, 255, 0);
      rect(x.get(i)*squareSize, y.get(i)*squareSize, squareSize, squareSize);
    }
    moveSnake();
    
  }

  void moveSnake() {
    if (!gameOver) {
      displayApple();
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
        if (x.get(0)<0 || y.get(0)<0 || x.get(0)>= w|| y.get(0) >=h){
          gameOver=true;
        }
        for( int i=1; i< x.size(); i++){
          if (x.get(0)==x.get(i) && y.get(0)==y.get(i)){
            gameOver=true;
          }
        }
        if (x.get(0)==appleX && y.get(0)==appleY) {
          appleX= int (random(0, w));
          appleY= int (random(0, h));
          score++;
          
        } else if (keyCode==UP || keyCode==DOWN || keyCode== LEFT || keyCode==RIGHT) {
          x.remove(x.size()-1);
          y.remove(y.size()-1);
        }
      }
    }else {
      background(0);
      textAlign(CENTER, TOP);
      textSize(30);
      text("score:", width/2-10,20);
      text(score, width/2+50, 20);
      textAlign (CENTER);
      textSize(80);
      text("GAME OVER", width/2, height/2);
      textSize(20);
      text("PRESS SPACE BAR TO PLAY AGAIN", width/2, height/2+20);
      if(keyPressed&&key==' '){
        x.clear();
        y.clear();
        x.add(5);
        y.add(5);
        appleX= int(random(0,w));
        appleY= int(random(0,h));
        score=0;
        gameOver=false;
      }
      
    }
  }
  void displayApple() {
    fill(255, 0, 0);
    rect(appleX*squareSize, appleY*squareSize, squareSize, squareSize);
  }
}