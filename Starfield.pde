Particle[] go = new Particle [350];
void setup()
{
  size(500, 500);
  for(int i=0; i<5; i++){
   go[i]= new OddballParticle(); 
  }
  for (int i=5; i<go.length; i++)
    go[i]= new Particle();
}
void draw()
{
  background(0);
  for (int i=0; i<go.length; i++) {
    go[i].move();
    go[i].show();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed, myOpacity;
  int myColor;
  Particle() {
    myX=myY=175;
    myAngle=(double)(Math.random()*(2*Math.PI));
    mySpeed=(double)(Math.random()*10);
    myColor=color(((int)Math.random()*255), ((int)Math.random()*255), ((int)Math.random()*255));
  }
  void move() {
    
  }
  void show() {
    color(myColor, myColor, myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  //your code here
}
