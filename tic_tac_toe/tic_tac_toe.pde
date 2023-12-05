void setup() {
  size(500, 500);
  background(255,255,255);
  Board = new int[3][3];
  drawBoard();
  drawCircle(0,0);
  drawCircle(width/3,0);
  drawCross(166,166);
}
