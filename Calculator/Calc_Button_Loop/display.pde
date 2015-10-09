
class Display {
  
  float displayPosX;
  float displayPosY;
  float displayWidthX;
  float displayHeightY;
  color displayColor;
  
   Display(int initDisplayPosX, int initDisplayPosY, int initDisplayWidth, float initDisplayHeight, color initDisplayColor){
    
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
    noFill();
  }
  
    
}
