
class AsteroidField {

  ArrayList arrayListOfAsteroids;

  AsteroidField() {
    arrayListOfAsteroids = new ArrayList();
  }


  void addAsteroid() {

    int lastArraySize = arrayListOfAsteroids.size();

    float chanceOfAsteroid = random(0, 100);    // dice roll to see if a new asteroid is created

    if (chanceOfAsteroid <= 2) {

      float edge = random(0, 100);    // dice roll to see what edge to draw the asteroid at

      if (edge < 25) {
        arrayListOfAsteroids.add(new Asteroid(random(width), 0, random(-2, 2), random(0.5, 4), random(50, 100), color(random(50, 150))));
      }
      else if (edge < 50) {
        arrayListOfAsteroids.add(new Asteroid(random(width), height, random(-2, 2), random(-0.5, -4), random(50, 100), color(random(50, 150))));
      }
      else if (edge < 75) {
        arrayListOfAsteroids.add(new Asteroid(0, random(height), random(0.5, 4), random(-2, 2), random(50, 100), color(random(50, 150))));
      }
      else {
        arrayListOfAsteroids.add(new ZigZagsteroid(width, random(height), random(-0.5, -4), random(-2, 2), random(50, 100), color(random(50, 150))));
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
    fill(0, 200, 0);
    textSize(48);
    text(arrayListOfAsteroids.size(), 100, (height-100));
  }
}


