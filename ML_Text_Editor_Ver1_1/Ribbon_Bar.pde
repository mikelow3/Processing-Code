
class Ribbon {
  
  float ribbonPosX;
  float ribbonPosY;
  float ribbonWidth;
  float ribbonHeight;
  color ribbonColor;
  
   Ribbon(int initRibbonPosX, int initRibbonPosY, int initRibbonWidth, float initRibbonHeight, color initRibbonColor){
    
    ribbonPosX = initRibbonPosX;
    ribbonPosY = initRibbonPosY;
    ribbonWidth= initRibbonWidth;
    ribbonHeight = initRibbonHeight;
    ribbonColor = initRibbonColor;
    
    }
  
  void drawRibbon(){ // Draws the ribbon car at the top of the screen
    fill(ribbonColor);
    rect(ribbonPosX, ribbonPosY, ribbonWidth, ribbonHeight);
    noFill();
  }
  
    
}
