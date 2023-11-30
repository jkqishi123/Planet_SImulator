int temp;
int moisturelvl;
float AtStrength, disasterChance;
int rwat;
int bwat;
int gwat;

int rter;
int bter;
int gter;

//for the ice at the top and bottom
float icexsize;
float iceysize;

Atmosphere atmosphere;

NaturalDisaster meteor = new NaturalDisaster("meteor", 20000, random(40, 60)),
tornado = new NaturalDisaster("tornado", 1000, 50),
earthquake = new NaturalDisaster("earthquake", 8000, 50),
tsunami = new NaturalDisaster("tsunami", 5000, 50), //tsunami will occur if an earthquake occurs on water.
hurricane = new NaturalDisaster("hurricane", 10000, 50);

NaturalDisaster[] disasters = {meteor, tornado, tornado, tornado, tornado};//, earthquake, earthquake, earthquake, hurricane, hurricane}; //there are multiple of the same to increase chance of disaster occuring

void setup() {
  size(1000, 600);
  
  //GUI CHANGEABLES PLACEHOLDERS
  temp = 0;
  moisturelvl = 0;
  AtStrength = 3.0;
  disasterChance = 3;
  
  rwat = 101;
  bwat = 173;
  gwat = 207;
  
  rter = 35;
  bter = 82;
  gter = 29;
  
  icexsize = 100;
  iceysize = 40;
  
  atmosphere = new Atmosphere();
}

void draw() {
  background(0);
  //TEST VALUES HERE
  if (temp == 20){
    drawBasePlanet();
  }
  
  if (temp == 30) {
    drawHotPlanet();
  }

    
  if (temp == 0) {
    drawColdPlanet();
  }
  
  if (moisturelvl == 0){
    drawDryPlanet();
  }
  
  atmosphere.drawMe();
 
  chooseDisaster(disasterChance);
  for(NaturalDisaster d : disasters) {
    d.drawMe();
    d.move();
  }
  
  //Planet: normal
  //water or ocean area
 
 // fill(rwat, bwat, gwat);
 // circle(width/2, height/2, 350);
 // noStroke();
  
  //terrain area
  //fill(rter, bter, gter);
  //ellipse(373, 300, 105, 150);
  //quad(340, 240, 380, 200, 450, 270, 370, 340);
  //quad(400,250, 430, 240, 500, 260, 370, 300);
  //quad(430,250, 470, 270, 460, 350, 390, 370);
  //quad(450, 280, 510, 310, 480, 350, 430, 370);
  
  //ellipse(638, 300, 80, 120);
  //quad(525, 220, 590, 230, 625, 282, 595, 297);
  //quad(580, 230, 550, 290, 665, 330, 640, 230);
  //quad(560, 370, 580, 400, 655, 350, 620, 270);
  //triangle(500, 400, 520, 420, 480, 405);
  //triangle(450, 410, 460, 415, 440, 420);
  //triangle(600, 190, 610, 203, 590, 207);
  
  ////ice area top
  //fill(255);
  //ellipse(500, 143, icexsize, iceysize);
  
  ////ice area bottom
  //ellipse(500, 460, icexsize, iceysize - 15);
  
}
