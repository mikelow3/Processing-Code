
class MainScreen{
  
  float bannerPosX;
  float bannerPosY;
  float bannerSizeX;
  float bannerSizeY;
  
  float pagePosX;
  float pagePosY;
  float pageSizeX;
  float pageSizeY;
  
  MainScreen(float initBannerX, float initBannerY, float initBannerSizeX, float initBannerSizeY, float initPageX, float initPageY, float initPageSizeX, float initPageSizeY){
    
    bannerPosX = initBannerX;
    bannerPosY = initBannerY;
    bannerSizeX = initBannerSizeX;
    bannerSizeY = initBannerSizeY;
    
    pagePosX = initPageX;
    pagePosY = initPageY;
    pageSizeX = initPageSizeX;
    pageSizeY = initPageSizeY;
  }
  
  void drawBanner(){ // Draws the banner at the top
    fill(#263238);
    rect(bannerPosX, bannerPosX, bannerSizeX, bannerSizeY);
    fill(#ff5722);
    textSize(32);
    text("Wordy",10,30);
  }
  
  void drawPage(){
    fill(250);
    rect(pagePosX, pagePosY, pageSizeX, pageSizeY);
  }
  
}
