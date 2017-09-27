// Lightning Code! (zap zap)
//Amended by Jess van de Ven from the starter code with help from Mr. Smith

int startX;             //start X coordinate of lightning 1
int startY = 120;      // start Y coordinate of lightning 1
int endX;              //end X coordinate of lightning 1
int endY = 150;        //end Y coordinate of lightning 1
int jstartX;            //start X coordinate of lightning 2
int jstartY = 170;      //start Y coordinate of lightning 2
int jendX;              //end X coordinate of lightning 2
int jendY = 160;        //end Y coordinate of lightning 2

int mouse = 1;          //counter of mouse clicks


void setup() {
  size(300, 300);              //sets size of window
  int jes=(int)(Math.random()*255); //red value
  int jess=(int)(Math.random()*255); //green value
  int jesss=(int)(Math.random()*255); //blue value
  background(jes, jess, jesss);        //sets background to random color
  frameRate(30);            //slows down speed of the draw function
}

void draw() {

  int jes=(int)(Math.random()*255); //random red value
  int jess=(int)(Math.random()*255); //random green value
  int jesss=(int)(Math.random()*255); //random blue value
  if (mouse%3==0) {                 //changes to random background color every few clicks
    background(jes, jess, jesss);   
  }

  strokeWeight(10);
  stroke(jes, jess, jesss); //sets lightning to a random color at each change in direction
  endX = startX+((int)(Math.random()*10 - 1));  //alters X coordinate of lightning 1
  endY = startY+((int)(Math.random()*18 - 10));  //alters Y coordinate of lightning 1
  line(startX, startY, endX, endY);
  startX=endX;
  startY=endY;
  jendX = jstartX+((int)(Math.random()*10 - 1)); //alters X coordinate of lightning 2
  jendY = jstartY+((int)(Math.random()*18 - 10));  //alters Y coordinate of lightning 1
  line(jstartX, jstartY, jendX, jendY);
  jstartX=jendX;
  jstartY=jendY;
}

void mousePressed() {      //resets the coordinates of lightning 1 and 2, adds 1 to mouse click counter
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
