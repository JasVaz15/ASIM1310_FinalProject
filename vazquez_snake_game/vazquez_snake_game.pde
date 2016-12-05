/* 
Final Project: Snake Game 
This version replacing my original Snake Game implements the ArrayList class to
create the board and also plays a major role in the display and function of the snake.
The snake class extends the board class sharing some charactersitics necessary for its
own display. 
*/


Board board= new Board();
Snake snake= new Snake();
void setup(){
  size(600,600);
}

void draw(){
  board.displayBoard();
  snake.displaySnake();
}