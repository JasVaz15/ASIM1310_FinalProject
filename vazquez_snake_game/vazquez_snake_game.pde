int boardWidth=20;
int boardHeight=30;
Board [][] setUpBoard= new Board [boardHeight][boardWidth]; 
float sSize= 20;

void setup(){
  size(400,600);
  for (int i=0; i< boardHeight; i++){
    for (int j=0; j<boardWidth; j++){
      setUpBoard [i][j]= new Board (j*sSize, i*sSize,sSize);
    }
  }
  
}

void draw(){
  for (int i=0; i<boardHeight; i++){
    for (int j=0; j<boardWidth; j++){
      setUpBoard [i][j].drawSquares();
    }
  }
  

}