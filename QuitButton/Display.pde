//Global variables
//
void displayOrientation()
{
  //Landscape
  String landscape = "Good to go!";
  String portrait = "Please turn your phone";
  String displayOrientation = ( width >= height ) ? landscape : portrait ;
  if ( displayOrientation==portrait ) println ( displayOrientation ); //Example of Portrait
  if ( displayOrientation==landscape ) appWidth = displayWidth;
  if ( displayOrientation==landscape ) appHeight = displayHeight;
  println (appWidth, appHeight); //Verification
}
//End diplayOrientation
