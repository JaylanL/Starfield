Particle[] go = new Particle [350];
void setup()
{
  size(500, 500);
  for (int i=0; i<go.length; i++)
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
  double myX, myY, myAngle, mySpeed myOpacity;
  int myColor;
  Particle() {
    myX=(double)(Math.random()*10);
    myY=(double)(Math.random()*10);
    myAngle=(double)(Math.random()*(2*Math.PI));
    mySpeed=(double)(Math.random()*10);
    myColor=color(((int)Math.random()*255), ((int)Math.random()*255), ((int)Math.random()*255));
  }
  void move() {
    
  }
  void show() {
    
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}
