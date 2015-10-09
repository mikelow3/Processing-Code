Button button1;
Button button2;
Button button3;
Button buttondec;

Display display1;

PFont font;

void setup() {
  background(220);
  size(500, 500);          // set the screen size
  smooth();
   
  font = createFont("Arial",20,true);
  textFont(font);
  display1 = new Display(20,20,460,100,255);
  
  button1 = new Button(200,150,0, 20,380,100,100,"1");
  button2 = new Button(200,150,0, 130,380,100,100,"2");
  button3 = new Button(200,150,0, 240,380,100,100,"3");
  buttondec = new Button(200,150,0, 350,380,100,100,".");
  }



void draw() {
  display1.drawDisplay();
  loadButtons();
 
  
  
  
  
  
  
  
  
  
   
}
