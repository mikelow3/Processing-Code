
class AsteroidField {

  ArrayList arrayListOfAsteroids;

  AsteroidField() {
    arrayListOfAsteroids = new ArrayList();
  }


  void addAsteroid() {

    int lastArraySize = arrayListOfAsteroids.size();

    float chanceOfAsteroid = random(0, 100);    // dice roll to see if a new asteroid is created

    if (chanceOfAsteroid <= 5) {

      float edge = random(0, 100);    // dice roll to see what edge to draw the asteroid at

      if (edge < 25) {
        arrayListOfAsteroids.add(new Asteroid(random(50,950), 0, random(50,75),100, 0, 1)); //not sure how to stop asteroid being created on the edge of the screen ?
      }
     }
  }


  void updateAsteroidPositions() {
    for (int index = 0; index < arrayListOfAsteroids.size(); index ++) {

      Asteroid referenceToAsteroid = (Asteroid) arrayListOfAsteroids.get(index);

      if (referenceToAsteroid.checkBoundaryConditions()) { 
        arrayListOfAsteroids.remove(index);
      }
      else {
        referenceToAsteroid.moveAsteroid();
      }
    }
  }

  void displayField() {
    for (int index = 0; index < arrayListOfAsteroids.size(); index ++) {

      Asteroid referenceToAsteroid = (Asteroid) arrayListOfAsteroids.get(index);

      referenceToAsteroid.displayAsteroid();
    }
  }

  void displayAsteroidCount() {
    println(arrayListOfAsteroids.size());
  }
    

  boolean onCollisionBullet(Bullet bulletCollision) {
     
    for (int index = 0; index < arrayListOfAsteroids.size(); index ++) {
      
      Asteroid referenceToAsteroid = (Asteroid) arrayListOfAsteroids.get(index);
    
    if ((bulletCollision.positionOnAxisY >= referenceToAsteroid.positionOnAxisY - referenceToAsteroid.asteroidDiameter) 
     && (bulletCollision.positionOnAxisY <= referenceToAsteroid.positionOnAxisY + referenceToAsteroid.asteroidDiameter)
     && (bulletCollision.positionOnAxisX >= referenceToAsteroid.positionOnAxisX - referenceToAsteroid.asteroidDiameter)
     && (bulletCollision.positionOnAxisX <= referenceToAsteroid.positionOnAxisX + referenceToAsteroid.asteroidDiameter)) 
     {
       arrayListOfAsteroids.remove(index); 
       score +=10; //increment score by 10
       return true;
      }
    }
       return false;  
   }
   
    
 
   boolean onCollisionShip(Ship shipCollision) {
     
    for (int index = 0; index < arrayListOfAsteroids.size(); index ++) {
      
      Asteroid referenceToAsteroid = (Asteroid) arrayListOfAsteroids.get(index);
    
    if ((shipCollision.positionOnAxisY >= referenceToAsteroid.positionOnAxisY) 
     && (shipCollision.positionOnAxisY <= referenceToAsteroid.positionOnAxisY)
     && (shipCollision.positionOnAxisX <= referenceToAsteroid.positionOnAxisX)
     && (shipCollision.positionOnAxisX <= referenceToAsteroid.positionOnAxisX))
      {
       println ("lose a life");
       arrayListOfAsteroids.remove(index);
       lives -=1; //decrement lives by 1
      
       if (lives ==0)
       {
        lose = true;
       }
       
       return true;
      }
    }
       return false;  
   }  
   
}
