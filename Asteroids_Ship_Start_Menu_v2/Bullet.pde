
class Bullet {  // bullet class
  
  float positionOnAxisX;
  float positionOnAxisY;
  float bulletW;
  float bulletH;
  color bulletColor;
  float bulletSpeedY;
    
  Bullet (float initialPositionX, float initialPositionY, float initialWidth, float initialHeight, color initialbulletColor, float initialbulletSpeedY) 
  {
    positionOnAxisX = initialPositionX;
    positionOnAxisY = initialPositionY;
    bulletW = initialWidth;
    bulletH = initialHeight;
    bulletColor = initialbulletColor;
    bulletSpeedY = initialbulletSpeedY;
   }
  
  void displayBullet() {   // draw bullet
    fill(bulletColor);                              
    rect(positionOnAxisX, positionOnAxisY, bulletW, bulletH);                       
  }
  
  void moveBullet() {   //move bullet
    positionOnAxisY = positionOnAxisY - bulletSpeedY;
       }
      
 float getPositionOnAxisX(){ //set bullet x position for collision detection
   return positionOnAxisX;
    }
    
 float getPositionOnAxisY(){ //set bullet y position for collision detection
   return positionOnAxisY;
    }
 
 }

