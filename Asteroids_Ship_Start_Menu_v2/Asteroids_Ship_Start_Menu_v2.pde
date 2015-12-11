
ArrayList arrayListOfBullets;

PImage space;
boolean lose;

int state;

AsteroidField level1;
Ship ship1;
Bullet bullets;

Button startGame;
Button hiScores;
Button mainScreen;

void setup() {
  frameRate(120);
  size(1000,500);                      
  space = loadImage("space.jpg");
 
  arrayListOfBullets = new ArrayList();
    
  level1 = new AsteroidField();
  ship1 = new Ship(mouseX,445,45,60,50);
  
  //welcome screen
  startGame  = new Button(200, color(150,150,0), 0, 100, 425, 100, 50, "Start Game");
  hiScores   = new Button(200, color(150,150,0), 0, 250, 425, 100, 50, "Hi Scores");
  
  //hiscores screen
  mainScreen = new Button(200, color(150,150,0), 0, 100, 425, 100, 50, "Main Screen");
  
}

void draw() {
  
 //background(255);
 
  //frameRate(120);
  image(space,0,0,1000,500);
  
  if (state == 0){
    main_Screen();
  }
  
  else if (state == 1){
  
  if(!lose)
  {
  level1.addAsteroid();
  level1.updateAsteroidPositions();
  level1.displayField();
  ship1.displayShip();
  displayCounters();
  level1.displayAsteroidCount();
       
   //loop through and load the bullet array with bullets, then display, move and initialise the collision detection function//     
   for (int i = 0; i < arrayListOfBullets.size(); i++ ) {  // draw and move the bullets using the Bullet arraylist
     Bullet b = (Bullet) arrayListOfBullets.get(i);
     b.displayBullet();
     b.moveBullet();
   //  level1.onCollision(b);
     
    // if bullet hits an asteroid then remove it, if it doesn't then nothing happens//
   if (level1.onCollisionBullet(b))
       arrayListOfBullets.remove(b);
     } 
  
   
   level1.onCollisionShip(ship1);
       
               
     //remove bullets from bullet array //
   if (arrayListOfBullets.size() > 100) {
      arrayListOfBullets.remove(0); 
      }
    }

       else
       {  
        game_Over();
       }
     }
  
  else if (state == 2){
   hi_Scores(); 
  }
  
}