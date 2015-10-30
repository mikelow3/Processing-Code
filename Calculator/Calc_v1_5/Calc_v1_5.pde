
int bNum = 16;

Button[] buttons = new Button[bNum];

Display display1;

PFont font;

void setup() { 
  background(220);
  size(500, 500);          // set the screen size
  smooth();

  font = createFont("Arial", 12, true);
  textFont(font);

  display1 = new Display(20, 15, 415, 60, 255);

  //for(int i=0; i<bNum; i++) {
  //  buttons[i] = new Button(200,150,0, 20+i*100,280,100,100,"temp");
  // }

  //bottom row
  Button buttonDec    = new Button(200, 150, 0, 20, 395, 100, 100, "DECIMAL", ".");
  Button button0      = new Button(200, 150, 0, 125, 395, 100, 100, "0", "0");
  Button buttonEquals = new Button(200, 150, 0, 230, 395, 100, 100, "=", "=");
  Button buttonPlus   = new Button(200, 150, 0, 335, 395, 100, 100, "+", "+");
  
  //second bottom row
  Button button1     = new Button(200, 150, 0, 20, 290, 100, 100, "1", "1");
  Button button2     = new Button(200, 150, 0, 125, 290, 100, 100, "2", "2");
  Button button3     = new Button(200, 150, 0, 230, 290, 100, 100, "3", "3");
  Button buttonMinus = new Button(200, 150, 0, 335, 290, 100, 100, "-", "-");
  
  //third bottom row
  Button button4    = new Button(200, 150, 0, 20, 185, 100, 100, "4", "4");
  Button button5    = new Button(200, 150, 0, 125, 185, 100, 100, "5", "5");
  Button button6    = new Button(200, 150, 0, 230, 185, 100, 100, "6", "6");
  Button buttonMult = new Button(200, 150, 0, 335, 185, 100, 100, "X", "*");
  
  //top row
  Button button7    = new Button(200, 150, 0, 20, 80, 100, 100, "7", "7");
  Button button8    = new Button(200, 150, 0, 125, 80, 100, 100, "8", "8");
  Button button9    = new Button(200, 150, 0, 230, 80, 100, 100, "9", "9");
  Button buttonDiv  = new Button(200, 150, 0, 335, 80, 100, 100, "/", "/");
  Button buttonClear= new Button(200, 150, 0, 335, 80, 100, 100, "Clear", "R");
  
  
  buttons[0] = buttonDec;
  buttons[1] = button0;
  buttons[2] = buttonEquals;
  buttons[3] = buttonPlus;
  
  buttons[4] = button1;
  buttons[5] = button2;
  buttons[6] = button3;
  buttons[7] = buttonMinus;
  
  buttons[8] = button4;
  buttons[9] = button5;
  buttons[10] = button6;
  buttons[11] = buttonMult;
  
  buttons[12] = button7;
  buttons[13] = button8;
  buttons[14] = button9;
  buttons[15] = buttonDiv;
  
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

/*
void mousePressed() {
  for (int i=0; i<buttons.length; i++) {
    buttons[i].pressedButton();
    display1.textInput(buttons[i].output());
  }
}
*/
