

class Button {
 
color buttonColor;
color buttonColorOn;
int textColor;
int buttonX;
int buttonY;
int buttonW;
int buttonH;
String buttonName;
boolean mouseOverButton = false;
boolean mousePressedButton = false;

  Button (color tempbuttonColor, color tempbuttonColorOn, int initialtextColor, int initialPositionX, int initialPositionY, int initialWidth, int initialHeight, String initialLabel){
    buttonColor = tempbuttonColor;  //initial color
    buttonColorOn = tempbuttonColorOn; //color when mouse over button
    textColor = initialtextColor; // button text color
    buttonX = initialPositionX;
    buttonY = initialPositionY;
    buttonW = initialWidth;
    buttonH = initialHeight; 
    buttonName = initialLabel;
  }
 
 void drawButton(){
  if (mouseOverButton) {
   fill(buttonColorOn);
   }
  else {
   fill(buttonColor); 
  }
   strokeWeight(1);
   rect(buttonX,buttonY,buttonW,buttonH);
   fill(textColor);   
   textSize(14);
   text(buttonName, buttonX+5, buttonY+20);
   //textAlign(CENTER);
   fill(buttonColor);
  }
  
 
 boolean overButton(){
  if (mouseX > buttonX + buttonH && mouseX < buttonX -buttonH && mouseY > buttonY && mouseY < buttonY) {
   mouseOverButton = true;
   return mouseOverButton;
  }
  else {
    mouseOverButton = false;
    return mouseOverButton;
  }
 }
 
   boolean pressedButton() {
    if (mouseOverButton == true && mousePressed) {
     mousePressedButton = true;
      return mousePressedButton;
    }
    else {
      mousePressedButton = false;
      return mousePressedButton;
    }
  } 
 
} 

