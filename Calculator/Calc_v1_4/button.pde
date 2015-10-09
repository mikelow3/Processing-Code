
class Button {

  color buttonColor; //deault button color
  color buttonColorOn; //button color when mouse over
  int textColor;  // button text color
  int buttonX;
  int buttonY;
  int buttonW;
  int buttonH;
  String buttonLabel; // button label
  String buttonChar;  // character associated with button label
  String buttonOutput;
  boolean mouseOverButton = false; //set to true when mouse over button
  boolean mousePressedButton = false; //set to true when mouse is over button and pressed

  Button (color tempbuttonColor, color tempbuttonColorOn, int initialtextColor, int initialPositionX, int initialPositionY, 
  int initialWidth, int initialHeight, String initialButtonLabel, String initialButtonChar) {
    
    buttonColor = tempbuttonColor;  
    buttonColorOn = tempbuttonColorOn;
    textColor = initialtextColor; 
    buttonX = initialPositionX;
    buttonY = initialPositionY;
    buttonW = initialWidth;
    buttonH = initialHeight; 
    buttonLabel = initialButtonLabel;
    buttonChar = initialButtonChar;
  }


// draw button and mouse over function
  void drawButton() {
    if (mouseOverButton == true) {
       fill(buttonColorOn);
     }
       else if (mouseOverButton == false){
       fill(buttonColor); 
     }
    strokeWeight(1);
    rect(buttonX, buttonY, buttonW, buttonH);
    fill(textColor);
    textSize(20);
    textAlign(CENTER);
    text(buttonLabel, (buttonW/2)+buttonX, (buttonH/2)+buttonY);
    fill(buttonColor);
  }

//updates the over button every frame
  void updateButton() {
    if (mouseX >= buttonX && mouseX <= buttonX + buttonW && mouseY >= buttonY && mouseY <= buttonY + buttonH) {
      mouseOverButton = true;
      }
    else {
      mouseOverButton = false;
     }
  }
            
//when mouse over and mouse pressed returns true
  boolean pressedButton() {
    if (mouseOverButton == true && mousePressed) {
      mousePressedButton = true;
      return true;
      }
      else {
      return false;
    }
  }

String returnChars() {
 if (pressedButton == true); {
    buttonOutput = buttonChar;
    }
 else { 
    buttonOutput = null;
   }
  return buttonOuput;
    }
}

  


