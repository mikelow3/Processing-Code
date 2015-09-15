
Layout pageLayout;
TextBox inputTextBox;

Button openF;
Button saveF;


void setup() {
  size(600,800);
  pageLayout = new Layout(0,0,600,100,40,135,520,630);
  inputTextBox = new TextBox("");
  
  openF  = new Button(200, color(150,150,0), 0, 100, 100, 100, 50, "Open File");
  saveF  = new Button(200, color(150,150,0), 0, 250, 100, 100, 50, "Save File");
  
  
}


void draw() {
  
  pageLayout.drawBanner();
  pageLayout.drawPage();
  inputTextBox.textInput();
  
  
  openF.drawButton();
  openF.overButton();
  openF.pressedButton();
  
  saveF.drawButton();
  saveF.overButton();
  saveF.pressedButton();
  
  
  
}
