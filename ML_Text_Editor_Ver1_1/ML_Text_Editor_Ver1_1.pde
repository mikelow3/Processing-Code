
Ribbon ribbonLayout;
Textbox inputTextBox;




Button openF;
Button saveF;

void setup() {
  size(600,800);  
  
  ribbonLayout = new Ribbon (0,0,800,120,color(222,232,247));
  inputTextBox = new Textbox(20,140,560,630,255);
  
  openF  = new Button(200, color(150,150,0), 0, 50 , 30, 75, 40, "Open File");
  saveF  = new Button(200, color(150,150,0), 0, 150, 30, 75, 40, "Save File");
  
 }



void draw() {
  
 background(50);
  ribbonLayout.drawRibbon();
  inputTextBox.drawTextBox();
  
  openF.drawButton();
  openF.overButton();
  openF.pressedButton();
  
  saveF.drawButton();
  saveF.overButton();
  saveF.pressedButton();
         
  textInput();
 

  
}
