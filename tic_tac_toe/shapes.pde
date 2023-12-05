public void drawCircle(float xcord, float ycord) {
  circle((xcord+width*1/6),(ycord+height*1/6),width/3);
}

public void drawCross (float xcord, float ycord) {
  line(xcord,ycord,(xcord+(width*1/3)),(ycord+(height*1/3)));
  line((xcord+(width*1/3)),ycord,xcord,(ycord+(height*1/3)));
}
