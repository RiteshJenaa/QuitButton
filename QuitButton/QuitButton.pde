//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color blue=#590AF0, green=#40E809, resetWhite=#FFFFFF, buttonColour; //Notice NightMode blue values
//
void setup()
{
  fullScreen();//displayWidth and displayHeight
  //Landscape
  String landscape = "Good to go!";
  String portrait = "Please turn your phone";
  String displayOrientation = ( width >= height ) ? landscape : portrait ;
  if ( displayOrientation==portrait ) println ( displayOrientation ); //Example of Portrait
  if ( displayOrientation==landscape ) appWidth = displayWidth;
  if ( displayOrientation==landscape ) appHeight = displayHeight;
  println (appWidth, appHeight); //Verification
  //
  //Similar to faceRect
  int minordisplayDimension = appHeight; //thinking experiment 
  int canvasCentre = minordisplayDimension*1/2;
  quitButtonX = (appWidth*1/2) - appWidth*1/4;
  quitButtonY = canvasCentre - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}
//End setup
void draw()
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight)
  {
    buttonColour = blue;
  } else 
  {
    buttonColour = green;
  }
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite);
}
//End draw
void keyPressed()
{
  //Quit KeyBoard Button
  if ( key=='J' || key=='j') exit(); //key vs keyCode
}
//End keyPressed
void mousePressed()
{
}
//End mousePressed
//
//End Main Program
