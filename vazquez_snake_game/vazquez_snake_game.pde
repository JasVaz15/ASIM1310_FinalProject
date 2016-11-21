Snake snake= new Snake (200, 300);
int r= (int)random (300); // location for food
Food food= new Food(r, r);
int rows=20;
int cols=30;
Board [][] setUpBoard= new Board [cols][rows]; 
float sSize= 20;

void setup() {
  size(400, 600);
  for (int i=0; i< cols; i++) {
    for (int j=0; j<rows; j++) {
      setUpBoard [i][j]= new Board (j*sSize, i*sSize, sSize);
    }
  }
}

void draw() {
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      setUpBoard [i][j].drawSquares();
    }
  }
  food.display();
  snake.drawSnake();
  food.foodEaten();
  //snake.moveSnake(); will be updated later
  snake.changeSpeed();
  snake.edgeDetection();
  snake.grow();
}