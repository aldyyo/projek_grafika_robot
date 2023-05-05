//nama : Aldy Dwi Prasetiyo
//nim : 2007411003
//kelas : TI4A

burunggg pertama = new burunggg  (20, 40);
burunggg kedua = new burunggg (90, 300);
burunggg ketiga = new burunggg (225, 100);
burunggg keempat = new burunggg (310, 320);
burunggg kelima = new burunggg (420, 100);
burunggg keenam = new burunggg (510, 120);

PImage background;
PImage object;
PImage robot1;
float robot = 100;
float robotG = 2;

//float easing = 0.04;
int x = 300; // x coordinate
int y = 450; // y coordinate
int z = 28; // z coordinate

void setup(){
size(600, 900);
background = loadImage("gununggg.png");
object = loadImage("burunggg.png");
 robot1 = loadImage("robot1.png");
}

void draw(){
   image(background, 0, 0);
//background(255, 204, 0);

//int targetX =mouseX;
// x+= (targetX - x) *easing ;
//int targetY = mouseY;
// y += (targetY - y) * easing;
 
   textSize(18);
   fill(0);
  text("Nama  : Aldy Dwi Prasetiyo", 25, 60);
  textSize(18);
  text("Nim   : 2007411003", 27, 90);
  
  pertama.run();
  kedua.run();
  ketiga.run();
  keempat.run();
  kelima.run();
  keenam.run();
  
   image(robot1, robot, 200);
  
  //rumus pergerakan robot
  robot = robot + robotG;
  
  if (robot > 400){
    robotG = robotG * -1;
  }
  
  if (robot < 0){
    robotG = robotG * -1;
  }
 
 int d;
 d=millis();
 
//kepala
fill(5, 105, 205);
noStroke();
ellipse(x-92+0.01*d, y-220, 120, 120);

//kakipanjang
fill(5, 105, 205);
noStroke();
rect(x-140+0.01*d, y-80, 30, 70);
rect(x-70+0.01*d, y-80, 30, 70);
//sepatu
fill(205,133,63);
rect(x-148+0.01*d, y-12, 45, 30, 10, 10, 20, 20);
rect(x-77+0.01*d, y-12, 45, 30, 10, 10, 20, 20);

//Body
//fill(50);
stroke(50);
strokeWeight(20);
strokeJoin(SQUARE);

//tanganitem
quad(x-40+0.01*d, y-150, x-35+0.01*d, y-150, x+50+0.01*d, y-150, x+45+0.01*d, y-150);
quad(x-235+0.01*d, y-100, x-240+0.01*d, y-100, x-155+0.01*d, y-150, x-150+0.01*d, y-150);

//telapaktangan
fill(205,133,63);
noStroke();
ellipse(x-245+0.01*d, y-97, 30,30);
ellipse(x+55+0.01*d, y-150, 30,30);

//badan
fill(5, 105, 205);
noStroke();
//nt x = 150; // x coordinate
//int y = 400; // y coordinate
//int z = 28; // z coordinate
rect(x-168+0.01*d, y-170, 150, 150, 60, 60, 180, 180);
fill(255);
ellipse(x-92+0.01*d , y-100, 120, 120);

//muka
ellipse(x-92+0.01*d, y-212, 95, 95);  

//matahitam
fill(0);
if (mousePressed == true){
  if(mouseButton == LEFT){
    fill(255);
  }
}else{
  if(mouseButton == RIGHT){
fill(150);
  }
}
ellipse(x-107+0.01*d, y-250, 40,40);
ellipse(x-77+0.01*d, y-250, 40,40);

fill(255);
ellipse(x-107+0.01*d, y-250, 10,10);
ellipse(x-77+0.01*d, y-250, 10,10);

//kantong
fill(0, 153, 204);
arc(x-92+0.01*d, y-90, 90, 90, 0, PI);

//mulut
fill(255,99,71);
arc(x-92+0.01*d, y-200, 55, 55, 0, PI);
fill(#ffa500);
ellipse(x-92+0.01*d, y-183, 23,23);

//lonceng
fill(255, 204, 0);
ellipse(x-98+0.01*d , y-153, 15, 15);
fill(255, 204, 0);
ellipse(x-84+0.01*d , y-153, 15, 15);
fill(255, 204, 0);
ellipse(x-91+0.01*d , y-142, 15, 15);
}
