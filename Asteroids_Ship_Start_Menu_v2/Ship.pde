
class Ship {
  
  float positionOnAxisX;
  float positionOnAxisY;
  float shipW;
  float shipH;
  color shipColor;
  PImage shipImage;
  
    
  Ship (float initialPositionX, float initialPositionY, float initialWidth, float initialHeight, color initialShipColor) 
  {
    positionOnAxisX = initialPositionX;
    positionOnAxisY = initialPositionY;
    shipW = initialWidth;
    shipH = initialHeight;
    shipColor = initialShipColor;
    shipImage = loadImage("rocket.png");
   }
  
  void displayShip() { 
    image(shipImage,mouseX-shipW/2,positionOnAxisY,shipW,shipH);
    }
    
   float getPositionOnAxisY() {  
     return positionOnAxisY;
     }
     
   float getPositionOnAxisX() {  
     return positionOnAxisX;
     }
     
   float getshipW() {  
     return shipW;
     }
    
    float getshipColor() {  
     return shipColor;
     }
     
    float getBulletFirePosition() {  
     return positionOnAxisY;

  }
}
    

