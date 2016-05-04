void setup()
{
  size(500, 500);
playerX = width / 2;
playerY = height - (playerHeight * 2);
bugX = width / 2;
bugY = bugHeight;
}

float playerwidth = 50;
float playerHeight = 30;
float playerX;
float playerY;
float halfwidth = playerwidth * 0.5f;
float halfHeight = playerHeight * 0.5f; 
float bugX;
float bugY;
float bugHeight = 20;
float scorecount=0;
float scx=10;
float scy=30;

void draw()
{
  background(0,255,255);
  
  //ship
line(playerX - halfwidth, playerY + halfHeight, playerX + halfwidth, playerY + halfHeight);
line(playerX - halfwidth, playerY +halfHeight, playerX - halfwidth, playerY);
line(playerX - halfwidth, playerY, playerX - (playerwidth * 0.25f), playerY - halfHeight);
line(playerX - (playerwidth * 0.25f), playerY - halfHeight, playerX + (playerwidth * 0.25f), playerY - halfHeight);
line(playerX + (playerwidth * 0.25f), playerY - halfHeight, playerX + halfwidth, playerY);
line(playerX + halfwidth, playerY, playerX + halfwidth, playerY + halfHeight);


  
  
}
