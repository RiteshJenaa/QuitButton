//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
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
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
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
