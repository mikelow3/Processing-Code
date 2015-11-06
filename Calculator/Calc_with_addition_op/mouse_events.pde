
void mousePressed() {
  for (int i=0; i<buttons.length; i++) {
   if (buttons[i].pressedButton()) {
    calculation.calculate(buttons[i].buttonName());
    //display1.textInput(buttons[i].output());
   }
  }
  //noLoop();
}

