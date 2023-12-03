import g4p_controls.*;

int temp;
int moisturelvl;
float AtStrength,disasterChance;
int rwat;
int bwat;
int gwat;

int rter;
int bter;
int gter;

//for the ice at the top and bottom
float icexsize;
float iceysize;


NaturalDisaster meteor = new NaturalDisaster("meteor", 20000, random(40, 60), random(3, 5), 0),
tornado = new NaturalDisaster("tornado", 1000, random(20,30), random(0.1, 0.5), round(random(6, 10))),
earthquake = new NaturalDisaster("earthquake", 8000, 50, 0, round(random(4, 6))),
hurricane = new NaturalDisaster("hurricane", 10000, random(40,50), random(0.1,0.2), round(random(6, 10)));

NaturalDisaster[] disasters = {meteor, tornado, tornado, tornado, tornado, earthquake, earthquake, earthquake, hurricane, hurricane}; //there are multiple of the same to increase chance of disaster occuring
Weather w;

void setup() {
  size(1000, 600);
  createGUI();
  w = new Weather();
  w.checkWeather();

  //GUI CHANGEABLES PLACEHOLDERS
  temp = 20;
  moisturelvl = 0;
  AtStrength = 2.0;
  disasterChance = 0;
  
  rwat = 101;
  bwat = 173;
  gwat = 207;
  
  rter = 35;
  bter = 82;
  gter = 29;
  
  icexsize = 100;
  iceysize = 40;
  
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

  drawAtmosphere();
 
  chooseDisaster(disasterChance);
  for(NaturalDisaster d : disasters) {
    d.drawMe();
    d.move();
  }  
  drawWeather(w);
  narrator();
  
}
