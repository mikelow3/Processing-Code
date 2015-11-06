
int bNum = 18;
Button[] buttons = new Button[bNum];

Display display1;
Calculation calculation;

PFont font;

void setup() { 
  background(220);
  size(375, 500);          // set the screen size
  smooth();

  font = createFont("Arial", 10, true);
  textFont(font);

  display1 = new Display(20, 15, 335, 60, 255);

  //for(int i=0; i<bNum; i++) {
  //  buttons[i] = new Button(200,150,0, 20+i*100,280,100,100,"temp");
  // }

  //bottom row
  Button buttonDec    = new Button(200, 150, 0, 20, 405, 80, 80, ".", ".");
  Button button0      = new Button(200, 150, 0, 105, 405, 80, 80, "0", " 0 ");
  Button buttonEquals = new Button(200, 150, 0, 190, 405, 80, 80, "=", "=");
  Button buttonPlus   = new Button(200, 150, 0, 275, 405, 80, 80, "+", "+");
  
  //second bottom row
  Button button1     = new Button(200, 150, 0, 20, 320, 80, 80, "1", "1");
  Button button2     = new Button(200, 150, 0, 105, 320, 80, 80, "2", "2");
  Button button3     = new Button(200, 150, 0, 190, 320, 80, 80, "3", "3");
  Button buttonMinus = new Button(200, 150, 0, 275, 320, 80, 80, "-", "-");
  
  //third bottom row
  Button button4    = new Button(200, 150, 0, 20, 235, 80, 80, "4", "4");
  Button button5    = new Button(200, 150, 0, 105, 235, 80, 80, "5", "5");
  Button button6    = new Button(200, 150, 0, 190, 235, 80, 80, "6", "6");
  Button buttonMult = new Button(200, 150, 0, 275, 235, 80, 80, "X", "*");
  
  //top row
  Button button7    = new Button(200, 150, 0, 20, 150, 80, 80, "7", "7");
  Button button8    = new Button(200, 150, 0, 105, 150, 80, 80, "8", "8");
  Button button9    = new Button(200, 150, 0, 190, 150, 80, 80, "9", "9");
  Button buttonDiv  = new Button(200, 150, 0, 275, 150, 80, 80, "/", "/");
  
  Button buttonClear= new Button(200, 150, 0, 20, 85, 165, 60, "Clear", "R");
  Button buttonDel  = new Button(200, 150, 0, 190, 85, 165, 60, "Del", "Del");
  
  calculation = new Calculation();
  
  
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
  
  buttons[16] = buttonClear;
  buttons[17] = buttonDel;
  
}


void draw() {
  display1.drawDisplay(calculation.showResult());

  //loop through button array, draw buttons and run update function
  for (int i=0; i<buttons.length; i++) { 
    buttons[i].updateButton();
    buttons[i].drawButton(); 
    // buttons[i].overButton();
  }
  //println(calculation.showResult());
}
