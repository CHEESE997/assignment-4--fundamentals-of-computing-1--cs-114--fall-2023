 public void drawCircle(float xcord, float ycord) {
  circle((xcord+width*1/6),(ycord+height*1/6),width/3);
}

public void drawCross (float xcord, float ycord) {
  line(xcord,ycord,(xcord+(width*1/3)),(ycord+(height*1/3)));
  line((xcord+(width*1/3)),ycord,xcord,(ycord+(height*1/3)));
}

public void updateCrosses() {
  int boardPlacement = 0;
  for(int row = 0; row < Board.length;row++){
    for(int column = 0; column < Board.length; column++){
      if(Board[row][column] == -1){
       switch(boardPlacement) {
        case (0):
            drawCross(0,0);
            break;
            
        case (1):
            drawCross((height*1/3),0);
            break;
        
        case (2):
            drawCross((height*2/3),0);
            break;
        
        case (3):
            drawCross(0,(height*1/3));
            break;
        
        case (4):
            drawCross((width*1/3),(height*1/3));
            break;
      
        case (5):
            drawCross((width*2/3),(height*1/3));
            break;
      
        case (6):
            drawCross(0,(height*2/3));
            break;
      
        case (7):
            drawCross((width*1/3),(height*2/3));
            break;
      
        case (8):
            drawCross((width*2/3),(height*2/3));
            break;
      
        default:
        println("GAME BROKE LOL");
        }
      }
      boardPlacement++;
     } 
    }
 }
