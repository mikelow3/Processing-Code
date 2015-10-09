
class Display {
  String chars = "";
  int displayPosX;
  int displayPosY;
  int displayWidthX;
  int displayHeightY;
  color displayColor;
  
   Display(String initChars, int initDisplayPosX, int initDisplayPosY, int initDisplayWidth, int initDisplayHeight, color initDisplayColor){
    
    chars = initChars;
    displayPosX = initDisplayPosX;
    displayPosY = initDisplayPosY;
    displayWidthX = initDisplayWidth;
    displayHeightY = initDisplayHeight;
    displayColor = initDisplayColor;
    
    }
  
  void drawDisplay(){ // Draws the ribbon car at the top of the screen
    fill(displayColor);
    rectMode(CORNER);
    rect(displayPosX, displayPosY, displayWidthX, displayHeightY);
    textAlign(RIGHT);
    text(chars, displayPosX, displayPosY);
    noFill();
  }
}
