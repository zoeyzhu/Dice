 void setup()
  {
    size(500,600);
    noLoop();
  }
  void draw()
  {
    background(192);
    int numTotal = 0;
    for (int x = 15; x<450; x+=60){
      for (int  y = 20; y<450; y+=60){
        Die bob = new Die(x,y);
        bob.show(); 
        if (bob.rollDie == 1){
          numTotal++;
        }
        else if (bob.rollDie == 2){
          numTotal+= 2;
      }
        else if (bob.rollDie == 3){
          numTotal+= 3;
      }
        else if(bob.rollDie == 4){
          numTotal+= 4;
       }
       else if(bob.rollDie == 5){
         numTotal+= 5;
       }
       else if (bob.rollDie == 6){
         numTotal+= 6;
       }
    
  }
    }
    text("Sum: " + numTotal, 225, 550); 
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int rollDie;
      int myX,myY;
      
      Die(int x, int y) //constructor
      {
          roll();
          myX= x;
          myY = y;
      }
      void roll()
      {
        int diceNum = (int)(Math.random()*6)+1;
        if (diceNum ==1){
          rollDie = 1;
        }
        else if (diceNum ==2){
          rollDie = 2;
        }
        else if (diceNum ==3){
          rollDie = 3;
        }
        else if (diceNum ==4){
          rollDie = 4;
        }
        else if (diceNum ==5){
          rollDie = 5;
        }
        else if (diceNum ==6){
          rollDie = 6;
        }
      }
      void show()
      {
          rect(myX,myY,50,50);
          
          if (rollDie ==1){
            fill(0,0,0);
            ellipse(myX + 25,myY + 25,12,12); 
            fill(255,255,255);
          }
          else if (rollDie ==2){
            fill(0,0,0);
            ellipse(myX+12,myY+12,11,11);
            ellipse(myX+40,myY+40,11,11);
            fill(255,255,255);
          }
          
          else if (rollDie ==3){
            fill(0,0,0);
            ellipse(myX+12,myY+12,11,11);
            ellipse(myX+40,myY+40,11,11);
            ellipse(myX + 25,myY + 25,11,11); 
            fill(255,255,255);
          }
          
          else if (rollDie ==4){
            fill(0,0,0);
            ellipse(myX+12,myY+12,11,11);
            ellipse(myX+40,myY+40,11,11);
            ellipse(myX+40,myY+12,11,11);
            ellipse(myX+12,myY+40,11,11);
            fill(255,255,255);
          }
          
          else if (rollDie ==5){
            fill(0,0,0);
            ellipse(myX+12,myY+12,11,11);
            ellipse(myX+40,myY+40,11,11);
            ellipse(myX+40,myY+12,11,11);
            ellipse(myX+12,myY+40,11,11);
            ellipse(myX + 25,myY + 25,11,11); 
            fill(255,255,255);
          }
          
          else if (rollDie ==6){
            fill(0,0,0);
            ellipse(myX+12,myY+12,10,10);
            ellipse(myX+40,myY+40,10,10);
            ellipse(myX+40,myY+12,10,10);
            ellipse(myX+12,myY+40,10,10);
            ellipse(myX + 12,myY + 25,10,10); 
            ellipse(myX + 40,myY + 25,10,10);
            fill(255,255,255);
          }
        
      }
  }


