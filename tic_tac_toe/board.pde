public  void drawBoard() {
  line((width*1/3),0,(width*1/3),height);
  line((width*2/3),0,(width*2/3),height);
  line(0,(height*1/3),width,(height*1/3));
  line(0,(height*2/3),width,(height*2/3));
}

public void checkForWin() {
  for (int row = 0; row < Board.length;row++) {
    int boardSumHorizontal = ((Board[row][0]) + (Board[row][1]) + (Board[row][2]));
    if(boardSumHorizontal == 3){
      noLoop();
      print("you win!");
      gameover = true;
      
    } else if(boardSumHorizontal == -3){
      noLoop();
      print("You Lose!");
      gameover = true;

    }
      
  }
  
  for (int column = 0; column < Board.length;column++) {
    int boardSumVertical = ((Board[0][column])+(Board[1][column])+(Board[2][column]));
    if(boardSumVertical == 3){
      noLoop();
      print("you win!");
      gameover = true;
      
    } else if(boardSumVertical == -3){
      noLoop();
      print("You Lose!");
      gameover = true;
      
    }
  }
  //check diagonals
  for (int diagonal=0; diagonal <= 2; diagonal+=2){
    int boardSumDiagonal = ((Board[0][0+diagonal])+(Board[1][1])+(Board[2][2-diagonal]));
    if(boardSumDiagonal == 3){
      noLoop();
      print("You Win!");
      gameover = true;
      
    } else if(boardSumDiagonal == -3){
      noLoop();
      print("You Lose");
      gameover = true;
      
    }
  }
  if (gameover == false){
    Boolean gameIsTied = true;
    for(int row = 0; row < Board.length;row++){
      for(int column = 0; column < Board.length; column++){
        if(Board[row][column] == 0){
          gameIsTied = false;
          break;
        }
      }
    }
    if(gameIsTied == true){
      noLoop();
      println("game is tied");
      gameover = true;
    }
  }
}
  

public void runAI() {
  boolean moveNotPlaced = true;
  //check for win
  for (int row = 0; row < Board.length;row++) {
    int boardSumHorizontal = ((Board[row][0]) + (Board[row][1]) + (Board[row][2]));
    if(boardSumHorizontal == -2){
      for(int check =0; check < 3; check++){
        if(Board[row][check]==0){
          Board[row][check]=-1;
          moveNotPlaced =false;
          break;
        }
      }
    }
  }
  
  for (int column = 0; column < Board.length;column++) {
    int boardSumVertical = ((Board[0][column])+(Board[1][column])+(Board[2][column]));
      if(boardSumVertical == -2){
        for(int check =0; check < 3; check++){
          if(Board[check][column]==0){
          Board[check][column]=-1;
          moveNotPlaced =false;
          break;
        }
      }
    } 
  }
  
  for (int diagonal=0; diagonal <= 2; diagonal+=2){
    int boardSumDiagonal = ((Board[0][0+diagonal])+(Board[1][1])+(Board[2][2-diagonal]));
      if(boardSumDiagonal== -2){
        if(diagonal == 0){
          for(int check =0; check < 3; check++){
            if(Board[check][check]==0){
              Board[check][check] = -1;
              moveNotPlaced =false;
              break;
            }
          }
        }
        if(diagonal == 2)
          for(int check =0; check < 3; check++){
            if(Board[diagonal-check][check]==0){
              Board[diagonal-check][check] = -1;
              moveNotPlaced =false;
              break;
            }
          }
      }
  }
  
  // block opponent
    for (int row = 0; row < Board.length;row++) {
    int boardSumHorizontal = ((Board[row][0]) + (Board[row][1]) + (Board[row][2]));
    if(boardSumHorizontal == 2){
      for(int check =0; check < 3; check++){
        if(Board[row][check]==0){
          Board[row][check]=-1;
          moveNotPlaced =false;
          break;
        }
      }
    }
  }
  
  for (int column = 0; column < Board.length;column++) {
    int boardSumVertical = ((Board[0][column])+(Board[1][column])+(Board[2][column]));
      if(boardSumVertical == 2){
        for(int check =0; check < 3; check++){
          if(Board[check][column]==0){
          Board[check][column]=-1;
          moveNotPlaced =false;
          break;
        }
      }
    } 
  }
  
  for (int diagonal=0; diagonal <= 2; diagonal+=2){
    int boardSumDiagonal = ((Board[0][0+diagonal])+(Board[1][1])+(Board[2][2-diagonal]));
      if(boardSumDiagonal== 2){
        if(diagonal == 0){
          for(int check =0; check < 3; check++){
            if(Board[check][check]==0){
              Board[check][check] = -1;
              moveNotPlaced =false;
              break;
            }
          }
        }
        if(diagonal == 2)
                  for(int check =0; check < 3; check++){
            if(Board[diagonal-check][check]==0){
              Board[diagonal-check][check] = -1;
              moveNotPlaced =false;
              break;
            }
          }
      }
  }
  // random move
  while(moveNotPlaced == true){
    int row = (int)random(3);
    int column = (int)random(3);
    if (Board[row][column]==0){
      Board[row][column] =-1;
      moveNotPlaced =false;
    }
  }
}
