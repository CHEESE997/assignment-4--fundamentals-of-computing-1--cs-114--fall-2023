void setup() {
  size(500, 500);
  background(255,255,255);
  Board = new int[3][3];
  drawBoard();
  //display array for testing purposes
  for(int row = 0; row < Board.length;row++){
    for(int column = 0; column < Board.length; column++){
      print(Board[row][column] + " ");
    }
    println();
  }
}

void draw(){
}

void keyPressed(){
  for(int row = 0; row < Board.length;row++){
    for(int column = 0; column < Board.length; column++){
      print(Board[row][column] + " ");
    }
    println();
  }
  switch(key) {
    
  case '0':
    if(Board[0][0]==0) {
      drawCircle(0,0);
      Board[0][0] = 1;
    }
  break;
  
  case '1':
    if(Board[0][1]==0) {
      drawCircle((height*1/3),0);
      Board[0][1] = 1;
    }
  break;
  
  case '2':
    if(Board[0][2]==0) {
      drawCircle((height*2/3),0);
      Board[0][2] = 1;
    }
  break;
  
    case '3':
    if(Board[1][0]==0) {
      drawCircle(0,(height*1/3));
      Board[1][0] = 1;
    }
  break;
  
      case '4':
    if(Board[1][1]==0) {
      drawCircle((width*1/3),(height*1/3));
      Board[1][1] = 1;
    }
  break;
  
        case '5':
    if(Board[1][2]==0) {
      drawCircle((width*2/3),(height*1/3));
      Board[1][2] = 1;
    }
  break;
  
          case '6':
    if(Board[2][0]==0) {
      drawCircle(0,(height*2/3));
      Board[2][0] = 1;
    }
  break;
  
        case '7':
    if(Board[2][1]==0) {
      drawCircle((width*1/3),(height*2/3));
      Board[2][1] = 1;
    }
  break;
  
          case '8':
    if(Board[2][2]==0) {
      drawCircle((width*2/3),(height*2/3));
      Board[2][2] = 1;
    }
  break;
  
  default:
  println("invalid key");
  }
}
