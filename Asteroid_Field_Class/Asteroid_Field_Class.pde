
AsteroidField level1;

void setup() {
  size(1000, 500);                          // set the screen size
  randomSeed(millis());                     // seed the random number generator to make it a bit more random

  level1 = new AsteroidField();
}

void draw() {

  background(255);    // refresh the background

  level1.addAsteroid();
  level1.updateAsteroidPositions();
  level1.displayField();
  level1.displayAsteroidCount();  
 
}


