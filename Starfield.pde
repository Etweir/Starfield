Particle[] star;
void setup()
{
  size(500,500);
  star=new Particle[1000];
  for(int i = 0;i<star.length;i++)
  star[i] = new Particle();
  star[0] = new OddballParticle();
}

void draw()
{
  background(0);
  for(int i = 0;i<star.length;i++){
  star[i].move();
  star[i].show();
}
}

class Particle
{
  double myX,myY,mySpeed,myAngle,mySize;
  int myColor;
  Particle(){
   myX=myY=250;
   myAngle = Math.random()*2*Math.PI;
   mySpeed=Math.random()*5;
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   mySize = Math.random()*5+2;
  }
  void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed; 
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
   myX=myY=250;
   myAngle = Math.random()*2*Math.PI;
   mySpeed=Math.random()*5;
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   mySize = Math.random()*10+2;
  }
  void show(){
     fill(107,108,108);
     stroke(0);
  //back triangle
  beginShape();
vertex(mouseX-40, mouseY+10);
vertex(mouseX,mouseY-15);
vertex(mouseX+40, mouseY+10);
endShape(CLOSE);
  //overall shape
  beginShape();
vertex(mouseX-40, mouseY+10);
vertex(mouseX,mouseY-15);
vertex(mouseX+40, mouseY+10);
vertex(mouseX+10, mouseY-50);
vertex(mouseX-10, mouseY-50);
endShape(CLOSE);
//right blaster
beginShape();
vertex(mouseX+19,mouseY-30);
vertex(mouseX+19,mouseY-45);
vertex(mouseX+15,mouseY-45);
vertex(mouseX+15,mouseY-30);
endShape(CLOSE);
//cockpit window
fill(182,54,8);
beginShape();
vertex(mouseX+19,mouseY-9);
vertex(mouseX,mouseY-18);
vertex(mouseX-19,mouseY-9);
vertex(mouseX,mouseY-40);
vertex(mouseX,mouseY-40);
endShape(CLOSE);
//left blaster
fill(107,108,108);
beginShape();
vertex(mouseX-19,mouseY-30);
vertex(mouseX-19,mouseY-45);
vertex(mouseX-15,mouseY-45);
vertex(mouseX-15,mouseY-30);
endShape(CLOSE);
//middle line
 beginShape();
vertex(mouseX, mouseY-50);
vertex(mouseX,mouseY-15);
endShape(LINE);
fill(26,193,235);
//thruster
ellipse(mouseX,mouseY,15,15);
}
  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
    
  }
}
 


