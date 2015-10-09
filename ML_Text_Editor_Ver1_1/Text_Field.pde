
class Textbox extends Ribbon {
  
  Textbox(int initRibbonPosX, int initRibbonPosY, int initRibbonWidth, float initRibbonHeight, color initRibbonColor) {
    super(initRibbonPosX, initRibbonPosY, initRibbonWidth, initRibbonHeight, initRibbonColor);
  }
   
   void drawTextBox(){ // Draws the ribbon car at the top of the screen
    fill(ribbonColor);
    //rectMode(LEFT);
    rect(ribbonPosX, ribbonPosY, ribbonWidth, ribbonHeight);
    noFill();
  }
}  
  

