
void mousePressed() {
  for (int i=0; i<buttons.length; i++) {
    buttons[i].pressedButton();
    display1.textInput(buttons[i].output());
       
  }
}
