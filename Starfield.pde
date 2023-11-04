Particle[] go = new Particle [350];
void setup()
{
  size(500, 500);
  for(int i=0; i<go.length; i++){
   go[i]= new Particle(); 
  }
    go[0]= new OddballParticle();
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
    myColor = color(255);
  }
  void move() {
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  void show() {
    fill(myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
  myX=myY=175;
  mySpeed=Math.random()*1;
  myAngle=Math.random()*8;
  }
  void move(){
     myX = myX + (Math.cos(myAngle)*mySpeed);
   myY = myY + (Math.sin(myAngle)*mySpeed);
   myAngle = myAngle + 0.005;
  } void show()
  {
    fill(255,0,0);
    ellipse((float)myX,(float)myY,80,80);
}
}
