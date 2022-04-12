//Global Variables
int appWidth, appHeight;
color resetWhite=#FFFFFF;
//
void setup()
{
  fullScreen();//displayWidth and displayHeight
  displayOrientation();
  population();
  //
}
//End setup
void draw()
{
  quitButtonDraw();
}
//End draw
void keyPressed()
{
  quitButtonKeyPressed();
}
//End keyPressed
void mousePressed()
{
  quitButtonMousePressed();
}
//End mousePressed
//
//End Main Program
