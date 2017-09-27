// Lightning Code! (zap zap)
//Amended by Jess van de Ven from the starter code with help from Mr. Smith

int startX;
int startY = 120;
int endX;
int endY = 150;
int jstartX;
int jstartY = 170;
int jendX;
int jendY = 160;

int mouse = 1;


void setup() {
  size(300, 300);
  int jes=(int)(Math.random()*255); //red value
  int jess=(int)(Math.random()*255); //green value
  int jesss=(int)(Math.random()*255); //blue value
  background(jes, jess, jesss);
  frameRate(30);
}

void draw() {

  int jes=(int)(Math.random()*255); //red value
  int jess=(int)(Math.random()*255); //green value
  int jesss=(int)(Math.random()*255); //blue value
  if (mouse%3==0) {                 //changes background color every other click
    background(jes, jess, jesss);
  }

  strokeWeight(10);
  stroke(jes, jess, jesss); //sets lightning to a color
  endX = startX+((int)(Math.random()*10 - 1)); 
  endY = startY+((int)(Math.random()*18 - 10));
  line(startX, startY, endX, endY);
  startX=endX;
  startY=endY;
  jendX = jstartX+((int)(Math.random()*10 - 1)); 
  jendY = jstartY+((int)(Math.random()*18 - 10));
  line(jstartX, jstartY, jendX, jendY);
  jstartX=jendX;
  jstartY=jendY;
}

void mousePressed() {
  startX = 0;
  startY = 60;
  endX = 0;
  endY = 150;
  jstartX = 0;
  jstartY = 250;
  jendX = 0;
  jendY = 150;
  mouse = mouse+1;
}
