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


//bug
line(bugX - halfwidth / 2, bugY + halfHeight, bugX + halfwidth / 2, bugY + halfHeight);//base
line(bugX - halfwidth / 2, bugY + halfHeight, bugX, bugY - bugHeight / 2);
line(bugX + halfwidth / 2, bugY + halfHeight, bugX, bugY - bugHeight / 2);
line(bugX - halfwidth / 4, bugY + bugHeight, bugX - halfwidth / 4, bugY + halfHeight);//left leg
line(bugX + halfwidth / 4, bugY + bugHeight, bugX + halfwidth / 4, bugY + halfHeight);//right leg


bugX+=random(-5,+5);
bugY+=random(+1);

if(scorecount>=10)
{
  bugY+=random(1,1.01);
}



if(bugX<=20)
{
  bugX=21;
}

if(bugX>=480)
{
  bugX=479;
}

if (keyPressed)
{
  
  
if (key == 'a' && playerX >= 30)
{
playerX -=2;
}

if (key == 'd' && playerX <= 470)
{
playerX +=2;
}

if(key ==' ')
{
  line(playerX,playerY, playerX,playerY-500);
  text("Pew Pew", random(playerX-145,playerX+100),random(400,450));
}

if(key ==' ' && playerX<=(bugX+15) && key==' '&& playerX>=(bugX-15))
{
  text("Ouch", random(bugX-40,bugX+20),bugY);
  bugY=10;
  bugX=random(50,450);
}


}
if(bugY>=height/2)
{
  text("It's getting closer!", 40,height/2);
}
if(bugY>=(height/2)+50)
{
  text("Kill it!", 300,(height/2)+50);
}
if(bugY>=(height/2)+100)
{
  text("OH GOD", 150,(height/2)+100);
}
if(bugY>=(height/2)+140)
{
  text("NOOOO!", random(100,200),random((height/2)+120,(height/2)+160));
}
if(bugY<=20)
{
  text("Phew", 220,20);
}
  
if(bugY>=playerY)
{
  playerX=1000;
  playerY=1000;
  bugX=1000;
  bugY=1000;
  scx=1000;
  scy=1000;
  text("YOU SUCK", 200,height/2);
}


if (bugY<=10)
{
  scorecount++;
}

textSize(22);
text("Score:" +scorecount, scx, scy); 
fill(random(0,255), random(0,255), random(0,255));
//if i want something done every second frameCount%60==0


}
