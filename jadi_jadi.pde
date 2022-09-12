import ddf.minim.*;

AudioPlayer lagu;
Minim minim;

float x, y, z;
float size = 75;
float s = 1.0;

PFont f;
int t=1;
void setup(){
  size(900,500);
  frameRate(1);
  minim = new Minim(this);
  lagu = minim.loadFile("Bintang Kejora.wav");
  lagu.play();
}

void draw(){
  if ((t>0) && (t<=20)){
    scene1();
  }
 
  else if ((t>20) && (t<=68)){
   scene2();
  }
  
  else if ((t>68) && (t<=128)){
    scene3();
  }
  
  t=t+1;
  if (t==128){
    exit();
  }
}

void scene1(){
  background(0);
   int d;
  d = second();
  
  pushMatrix();
  translate(width*0.5, height*0.2);
  rotate(frameCount / -100.0);
  s(0, 0, 30, 70, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.2, height*0.1);
  rotate(frameCount / -100.0);
  s1(0, 0, 5, 10, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.3, height*0.3);
  rotate(frameCount / -100.0);
  s2(0, 0, 10, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.7, height*0.4);
  rotate(frameCount / -100.0);
  s3(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.9, height*0.3);
  rotate(frameCount / -100.0);
  s4(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.1, height*0.3);
  rotate(frameCount / -100.0);
  s5(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.1);
  rotate(frameCount / -100.0);
  s6(0, 0, 10, 20, 5); 
  popMatrix();
  noStroke();
  
  pushMatrix();
  translate(width*0.2, height*0.6);
  rotate(frameCount / -100.0);
  s7(0, 0, 10, 20, 5); 
  popMatrix();
  noStroke();
  
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / -100.0);
  s8(0, 0, 10, 20, 5); 
  popMatrix();
  noStroke();
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / -100.0);
  s9(0, 0, 10, 30, 5); 
  popMatrix();

//bulan
fill(250+50*d,251,147);
ellipse(75,70,100,100);

//orang
fill(255,205,155);
ellipse(38+10*d,370,18,18);
fill(100,20,10);
arc(38+10*d,370,18,18,(180*PI)/360,(360*PI)/180);
fill(100,20,255);
arc(38+10*d,390,18,18,(180*PI)/180,(360*PI)/180);
rect(30+10*d,390,18,18);
fill(255,305,155);
rect(30+10*d,395,30,5);
fill(22, 208, 221);
rect(30+10*d,408,18,40);
fill(232, 6, 29);
rect(30+10*d,445,18,10);
}
void s(float x, float y, float radius1, float radius2, int npoints) {
  fill(250, 255, 0);
 strokeWeight(5);
  stroke(#FFFDFC);
    stroke(#FFFDFC);
  scale(s);
  vertex(-width/2,-height/2,width,height);
  if(s>=0.01){
    s = s-0.01;
  } else{
    
    s = s+0.01;
  }
  
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void s1(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
  
  void s2(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void s3(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void s4(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void s5(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void s6(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void s7(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void s8(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void s9(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
 
//scene2
void scene2(){
 background(40, 9, 43);
  int d;
  d = second();
  
  pushMatrix();
  translate(width*0.5, height*0.2);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.2, height*0.1);
  rotate(frameCount / -100.0);
  star1(0, 0, 5, 10, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.3, height*0.3);
  rotate(frameCount / -100.0);
  star2(0, 0, 10, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.7, height*0.4);
  rotate(frameCount / -100.0);
  star3(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.9, height*0.3);
  rotate(frameCount / -100.0);
  star4(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.1, height*0.3);
  rotate(frameCount / -100.0);
  star5(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.1);
  rotate(frameCount / -100.0);
  star6(0, 0, 10, 20, 5); 
  popMatrix();
  noStroke();

//bulan
fill(250+50*d,251,147);
ellipse(75,70,100,100);

//Jalan
fill(#85888c);
rect(0,400,900,900);
fill(#FAFAFA);
rect(10,450,20,5);
rect(60,450,20,5);
rect(110,450,20,5);
rect(160,450,20,5);
rect(210,450,20,5);
rect(260,450,20,5);
rect(310,450,20,5);
rect(360,450,20,5);
rect(410,450,20,5);
rect(460,450,20,5);
rect(510,450,20,5);
rect(560,450,20,5);
rect(610,450,20,5);
rect(660,450,20,5);
rect(710,450,20,5);
rect(760,450,20,5);
rect(810,450,20,5);
rect(860,450,20,5);

fill(0);
triangle(80,375,50,400,110,400);
fill(100);
arc(80,430,30,50,(180*PI)/180,(0*PI)/180);

fill(200,100,0);
triangle(160,375,130,400,190,400);
fill(0,200,200);
arc(160,430,30,50,(180*PI)/180,(0*PI)/180);

  //gedung
noStroke();

fill(#910a50);

rect(135,180,200,220);
rect(95,160,80,240);
rect(0,200,120,200);
rect(670,190,90,210);
rect(750,170,100,230);
rect(800,150,100,250);

//Jendela
fill(#FFFFFF);
rect(19,250,20,40);
rect(59,250,20,40);

rect(105,200,20,40);
rect(145,200,20,40);

rect(105,300,20,40);
rect(145,300,20,40);

rect(240,250,20,40);
rect(280,250,20,40);

rect(240,350,20,40);
rect(280,350,20,40);

rect(680,350,20,40);
rect(730,350,20,40);

rect(680,250,20,40);
rect(730,250,20,40);

rect(790,250,20,40);
rect(820,250,20,40);

rect(790,350,20,40);
rect(820,350,20,40);

rect(870,250,20,40);
rect(870,350,20,40);

//awan     
  translate(y-0.1, height/2-2*size/2);
  
fill(95,158,160);
ellipse(450+10*d,-50,70,45);
ellipse(500+10*d,-50,85,65);
ellipse(540+10*d,-50,70,35);

ellipse(700+10*d,-100,80,50);
ellipse(750+10*d,-100,95,75);
ellipse(780+10*d,-100,80,55);
ellipse(815+10*d,-100,75,40); 

ellipse(250+10*d,-100,80,35);
ellipse(300+10*d,-100,80,45);

//mobil
x = x + 20;
translate(x, height/2-3*size/2);
fill(#e83030);
rect(200,100,100,50);
fill(255,105,180);
rect(300,115,40,35);
fill(255);
rect(310,122,20,20);
fill(65);
ellipse(230,150,30,30);
ellipse(300,150,30,30);

}

void star(float x, float y, float radius1, float radius2, int npoints) {
  fill(250, 255, 0);
 strokeWeight(5);
  stroke(#FFFDFC);
  
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void star1(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
  
  void star2(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void star3(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void star4(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void star5(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void star6(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

//scene3
void scene3(){
 background(40, 9, 43);
  int d;
  d = second();
  
  pushMatrix();
  translate(width*0.5, height*0.2);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.2, height*0.1);
  rotate(frameCount / -100.0);
  star1(0, 0, 5, 10, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.3, height*0.3);
  rotate(frameCount / -100.0);
  star2(0, 0, 10, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.7, height*0.4);
  rotate(frameCount / -100.0);
  star3(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.9, height*0.3);
  rotate(frameCount / -100.0);
  star4(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.1, height*0.3);
  rotate(frameCount / -100.0);
  star5(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.1);
  rotate(frameCount / -100.0);
  star6(0, 0, 10, 20, 5); 
  popMatrix();
  noStroke();
  
  
//bulan
fill(250+50*d,251,147);
ellipse(75,70,100,100);

//Jalan
fill(#f49242);
rect(0,400,900,900);

//Rumah
fill(#e8e42f);
triangle(120,350,90,370,150,370);
fill(#2fe8c0);
rect(90,370,60,30);
//
fill(#f44f41);
triangle(200,325,170,370,230,370);
fill(255,255,0);
rect(170,370,60,30);

//pohon
  fill(#369820);
triangle(500,350,540,350,520,320);
triangle(500,370,540,370,520,340);
triangle(500,390,540,390,520,360);
fill(#293E25);
rect(515,390,10,20);
//
fill(#369820);
triangle(550,350,590,350,570,320);
triangle(550,370,590,370,570,340);
triangle(550,390,590,390,570,360);
fill(#293E25);
rect(565,390,10,20);

//awan     
  translate(y-0.1, height/2-2*size/2);
  
fill(95,158,160);
ellipse(450+10*d,-50,70,45);
ellipse(500+10*d,-50,85,65);
ellipse(540+10*d,-50,70,35);

ellipse(700+10*d,-100,80,50);
ellipse(750+10*d,-100,95,75);
ellipse(780+10*d,-100,80,55);
ellipse(815+10*d,-100,75,40); 

ellipse(250+10*d,-100,80,35);
ellipse(300+10*d,-100,80,45);
}

void str(float x, float y, float radius1, float radius2, int npoints) {
  fill(250, 255, 0);
 strokeWeight(5);
  stroke(#FFFDFC);
  
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void str1(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
  
  void str2(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void str3(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void str4(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void str5(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void str6(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void stop()
{
  lagu.close();
  minim.stop();
  super.stop();
}
