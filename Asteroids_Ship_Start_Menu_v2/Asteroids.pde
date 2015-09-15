
class Asteroid {
  
  float positionOnAxisX;
  float positionOnAxisY;
  float asteroidDiameter;
  color asteroidColor;
  float speedInX;
  float speedInY;
  PImage asteroidImage;
     
  
  Asteroid (float initialPositionX, float initialPositionY, float initialDiameter, color initialProjColor, float initialSpeedX, float initialSpeedY) 
  {
    positionOnAxisX = initialPositionX;
    positionOnAxisY = initialPositionY;
    asteroidDiameter = initialDiameter;
    asteroidColor = initialProjColor;
    speedInX = initialSpeedX;
    speedInY = initialSpeedY;
    asteroidImage = loadImage("asteroid_stock.png");
   }
  
  void displayAsteroid() {   // draw asteroid
    noStroke();
    fill(asteroidColor);                                                         
    //ellipseMode(CENTER);                                                             
    //ellipse(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter);
    //imageMode(CENTER);
    image(asteroidImage,positionOnAxisX,positionOnAxisY,asteroidDiameter,asteroidDiameter);
   }
  
  void moveAsteroid() { // move projectile
   // positionOnAxisX = positionOnAxisX + speedInX;
    positionOnAxisY = positionOnAxisY + speedInY;
         }
         
   boolean checkBoundaryConditions () {

    // Remember, || means "or."

    if (((positionOnAxisX - asteroidDiameter) > width) || ((positionOnAxisX + asteroidDiameter) < 0)
      || ((positionOnAxisY - asteroidDiameter) > height) || ((positionOnAxisY + asteroidDiameter) < 0)) {

      return true;
    }
    else {
      return false;
    }
  }
  
   float getAsteroidDiameter(){ //set bullet x position for collision detection
   return asteroidDiameter;
    }

} 




