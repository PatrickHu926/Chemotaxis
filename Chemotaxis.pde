Sun[] power = new Sun[1000];
void setup(){
  size(500,500);
  for (int i = 0; i<power.length; i++){
    power[i] = new Sun();
  }
}
void draw(){
  background(0);
  fill(255,255,0,255);
  int sunWidth = 100;
  int sunLength = 450;
  ellipse(525,250,sunWidth,sunLength);
  for (int i = 0; i<power.length; i++){
    power[i].show();
    power[i].move();
    if(dist(power[i].myX,power[i].myY, 100 , 450) < 75){
      sunWidth = sunWidth+10;
      sunLength = sunLength+10;
      ellipse(525,250,sunWidth,sunLength);
    }
  }
}
class Sun{
  int myColor;
  int mySize;
  float myX;
  float myY;
  Sun(){
    myColor = color(255,255,0,25);
    mySize = 25;
    myX = (int)(Math.random()*500+500);
    myY = (int)(Math.random()*425+35);
  }
  void move(){
    if(myX < 0){
      myX=500;
    }
    myX = myX - (int)(Math.random()*3)-0.5;
  }
  void show(){
    fill(myColor);
    stroke(myColor);
    ellipse(myX,myY,mySize,mySize);
  }
}
