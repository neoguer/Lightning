int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
void setup()
{
  strokeWeight(5);
  size(300, 300);
  background(6,63,155);
}
void draw()
{
  stroke((int)(Math.random()* 255), (int)(Math.random()* 255), (int)(Math.random()* 255));
  startX = 150;
  startY = 0;
  endX = 0;
  while (endX <300)
  {
    endX = startX + (int)(Math.random()*40)-15 ;
    endY = startY + (int)(Math.random()*80)-7;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  if (endX == 300)
    background(6,63,155);
  ;
}
void mousePressed()
{
  redraw();
}
