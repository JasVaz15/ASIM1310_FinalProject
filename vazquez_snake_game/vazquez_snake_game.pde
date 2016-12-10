/*
Creative Coding: ASIM1310-801C
 Final Project: Snake Game
 Jasmine Vazquez
 
 Features the movement functionality of a program by Busson Karl:
 https://www.openprocessing.org/sketch/186863
 
 Features edited version of Apple Crunch Sound Effect by Jojikiba:
 https://www.youtube.com/watch?v=-GOpUtLxHAU
 */

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Board board= new Board();
Snake snake= new Snake();
Minim m;
AudioPlayer p;

void setup() {
  size(600, 600);
  m= new Minim(this);
  p= m.loadFile("Bite.mp3");
}

void draw() {
  board.displayBoard();
  snake.displaySnake(); // Includes all of the snake's functionality (movement, point detections, and loss detection
}