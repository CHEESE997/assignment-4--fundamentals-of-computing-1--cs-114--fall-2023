public void drawBoard() {
  line((width*1/3),0,(width*1/3),height);
  line((width*2/3),0,(width*2/3),height);
  line(0,(height*1/3),width,(height*1/3));
  line(0,(height*2/3),width,(height*2/3));
}

public void checkForWin() {
  for (int row = 0; row < Board.length;row++) {
    if((Board[row][0]==1) && (Board[row][1]==1) && (Board[row][2]==1)){
      print("you win!");
    }
  }
  
  for (int column = 0; column < Board.length;column++) {
    if((Board[0][column]==1) && (Board[1][column]==1) && (Board[2][column]==1)){
      print("you win!");
    }
  }
  //check diagonals
  for (int diagonal=0; diagonal <= 2; diagonal+=2){
    if((Board[0][0+diagonal] == 1) && (Board[1][1]==1) && (Board[2][2-diagonal] == 1)){
      print("you win!");
    }
  }
}
