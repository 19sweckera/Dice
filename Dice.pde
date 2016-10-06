int total = 0;
void setup()
{
  noLoop();
  size(400,400);
  textSize(78);
  textAlign(CENTER);
  background(255,255,255);
}
void draw()
{
    background(255,255,255);

  for(int i =50; i<400 ;i =i+125){
    for(int y = 10; y<300; y=y+58){
      Die die1 = new Die(i,y); 
      die1.show();
     total = total+die1.dieValue;
      
    }
  }

   fill(200,100,100);
   
  text("Total: " + total,200,380);
}
void mousePressed()
{
  total = 0;
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int dieValue;
  int myX;
  int myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    
    myX = x;
    myY = y;
    roll();
    
  }
  void roll()
  {
    dieValue = (int)((Math.random()*6))+1;
    //dieValue = 4;

  }
  void show()
  {
    fill(200,100,100);
    rect(myX,myY,50,50,20);
    fill(255);
  //  text(dieValue,myX+10,myY+10);
    if(dieValue ==1){
      ellipse(myX+25,myY+25,15,15);
    }else if(dieValue == 2){
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+35,myY+35,10,10);
    }else if (dieValue == 3){
      ellipse(myX+12,myY+12,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+36,myY+36,10,10);
    }else if (dieValue == 4){
      for(int i=13; i<50;i=i+26){
        for(int j=13; j<50;j=j+26){
          ellipse(myX+i,myY+j,10,10);
        }
      }
    }else if(dieValue == 5){
      for(int i=13; i<50;i=i+26){
        for(int j=13; j<50;j=j+26){
          ellipse(myX+i,myY+j,10,10);
        }
      }
      ellipse(myX+25,myY+25,10,10);

    }else if(dieValue ==6){
      for(int i=13;i<50;i=i+13){
        for(int j=16; j<50; j=j+17){
          ellipse(myX+j,myY+i,10,10);
        }
      }
    }
    
  }
}
