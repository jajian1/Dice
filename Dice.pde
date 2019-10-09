Die bob;
int x;
int y;
int sum =0;
void setup()
{
  size(500,500);
  textAlign(CENTER,CENTER);
  noLoop();
  bob = new Die(250,250);
}
void draw()
{
  background(0);
  for(int y = 20; y<= 455; y+=40){
    for(int x = 20; x<= 455; x+=40){
    Die bob = new Die(x,y);
    bob.roll();
    bob.show();
    sum = sum + bob.rol;  
  }
  }
  text("Sum of die is " + sum, 250,480);
  sum =0;
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX,myY, rol;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    //variable initializations here
  }
  void roll()
  {
    rol = (int)(Math.random() * 6) +1;
    //your code here
  }
  void show()
  {
    fill((int)(Math.random()*255)+1);
    rect(myX,myY,40,40);
    if(rol == 1){
      fill(255,0,0);
      ellipse(myX+20,myY+20,5,5);
    }
    if(rol == 2){
      fill(255,0,0);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
    }
    if(rol == 3){
      fill(255,0,0);
      ellipse(myX+20,myY+20,5,5);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
    }
    if(rol == 4){
      fill(255,0,0);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
      ellipse(myX+10,myY+30,5,5);
      ellipse(myX+30,myY+10,5,5);
    }
    if(rol == 5){
      fill(255,0,0);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
      ellipse(myX+10,myY+30,5,5);
      ellipse(myX+30,myY+10,5,5);
      ellipse(myX+20,myY+20,5,5);
    }
    if(rol == 6){
      fill(255,0,0);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
      ellipse(myX+10,myY+30,5,5);
      ellipse(myX+30,myY+10,5,5);
      ellipse(myX+10,myY+20,5,5);
      ellipse(myX+30,myY+20,5,5);
    }
      
      
      
    
    
    
    //your code here
  }
}