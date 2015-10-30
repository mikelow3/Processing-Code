
class Display {

  String output = "";
  float displayPosX;
  float displayPosY;
  float displayWidthX;
  float displayHeightY;
  color displayColor;

  Display(int initDisplayPosX, int initDisplayPosY, int initDisplayWidth, float initDisplayHeight, color initDisplayColor) {

    displayPosX = initDisplayPosX;
    displayPosY = initDisplayPosY;
    displayWidthX = initDisplayWidth;
    displayHeightY = initDisplayHeight;
    displayColor = initDisplayColor;
  }

  void drawDisplay() { // Draws the ribbon bar at the top of the screen
    fill(displayColor);
    rectMode(CORNER);
    rect(displayPosX, displayPosY, displayWidthX, displayHeightY);
    fill(50);
    textAlign(RIGHT);
    text(output, displayPosX+displayWidthX-3, displayPosY+displayHeightY/1.5);
    noFill();
  }

  void textInput(String newCharacter) {
    if (newCharacter !=null && newCharacter != "Del") {
    output = output + newCharacter;
    println(output);
      }
       
   if (newCharacter !=null && newCharacter == "Del"){
      if (output.length() >0){
        output=output.substring(0, output.length()-1);
       }
        println(newCharacter);
    }
    
   if (newCharacter !=null && newCharacter == "R"){
     println(newCharacter);
     setup();
      }
    }
   }
 