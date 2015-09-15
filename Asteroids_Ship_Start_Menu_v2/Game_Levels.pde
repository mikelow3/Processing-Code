

void header() {                               
  rectMode(CENTER);
  textSize(40);
  fill(200);
  text("Asteroids", 500, 100);
  textAlign(CENTER); 
 }


void main_Screen() {
  image(space,0,0,1000,500);
  
  state = 0;
  header();
  startGame.drawButton();
  startGame.overButton();
  startGame.pressedButton();
    if (startGame.pressedButton()) {
     state = 1;
    }
      
  hiScores.drawButton();
  hiScores.overButton();
  hiScores.pressedButton();
    if (hiScores.pressedButton()) {
     state = 2; 
   }
 }
 
void hi_Scores() {
  image(space,0,0,1000,500);
  
  state = 2;
  header();
  mainScreen.drawButton();
  mainScreen.overButton();
  mainScreen.pressedButton();
    if (mainScreen.pressedButton()) {
    state = 0; 
    }
   
}
  
void game_Over(){
    
   
    fill(255);
    textSize(20);
    textAlign(LEFT);
    text("GAME OVER",80,40);
    text("SCORE:" +score,80,70);  
   
   header();
   mainScreen.drawButton();
   mainScreen.overButton();
   mainScreen.pressedButton();
   if (mainScreen.pressedButton()) {
   state = 0; 
    }

    
}



