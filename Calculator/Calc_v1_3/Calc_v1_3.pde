
int bNum = 4;

Button[] buttons = new Button[bNum];

Display display1;

PFont font;

void setup() { 
  background(220);
  size(500, 500);          // set the screen size
  smooth();

  font = createFont("Arial", 16, true);
  textFont(font);

  display1 = new Display(20, 20, 460, 100, 255);

  //for(int i=0; i<bNum; i++) {
  //  buttons[i] = new Button(200,150,0, 20+i*100,280,100,100,"temp");
  // }

  Button button1 = new Button(200, 150, 0, 20, 380, 100, 100, "1", "1");
  Button button2 = new Button(200, 150, 0, 130, 380, 100, 100, "2", "2");
  Button button3 = new Button(200, 150, 0, 240, 380, 100, 100, "3", "3");
  Button buttonDec = new Button(200, 150, 0, 350, 380, 100, 100, "DECIMAL", ".");

  buttons[0] = button1;
  buttons[1] = button2;
  buttons[2] = button3;
  buttons[3] = buttonDec;
}


void draw() {
  display1.drawDisplay();

  //loop through button array, draw buttons and run update function
  for (int i=0; i<buttons.length; i++) { 
    buttons[i].updateButton();
    buttons[i].drawButton(); 
    // buttons[i].overButton();
  }
}


void mousePressed() {
  for (int i=0; i<buttons.length; i++) {

    println(buttons[i].pressedButton());
  }
}





