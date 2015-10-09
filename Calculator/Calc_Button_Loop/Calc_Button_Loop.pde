
int bNum = 4;

Button [] buttons = new Button[bNum];

Display display1;

PFont font;

void setup() { 
  background(220);
  size(500, 500);          // set the screen size
  smooth();
   
  font = createFont("Arial",20,true);
  textFont(font);
  
  display1 = new Display(20,20,460,100,255);
  
  for(int i=0; i<bNum; i++) {
    buttons[i] = new Button(200,150,0, 20+i*100,380,100,100,"temp");
   }
  
  buttons[0].setName("1");
  buttons[1].setName("2");
  buttons[2].setName("3");
  buttons[3].setName("DECIMAL");
  
  
  //button1 = new Button(200,150,0, 20,280,100,100,"1");
  //button2 = new Button(200,150,0, 130,280,100,100,"2");
  //button3 = new Button(200,150,0, 240,280,100,100,"3");
  //buttondec = new Button(200,150,0, 350,380,100,100,".");
  }



void draw() {
  display1.drawDisplay();
 // loadButtons();
 
  for(int i=0; i<bNum; i++){ 
    buttons[i].drawButton(); 
    buttons[i].overButton();
    buttons[i].pressedButton();
  }
}
  
  
  

