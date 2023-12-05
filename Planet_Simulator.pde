import g4p_controls.*;
boolean running = true;
int temp, currPopulation;
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

PVector[] stars;
Weather w;
float AtRadius, numCircles;

//there are multiple of the same to increase chance of disaster occuring
String[] NatDisasters = {"meteor", "tornado", "tornado", "tornado", "tornado", "earthquake", "earthquake", "earthquake", "hurricane", "hurricane"}; 
ArrayList<NaturalDisaster> occuringDisasters;

void setup() {
  size(1000, 600);
  surface.setLocation(430,100); //changes the location of the display window
  createGUI();
  createStars();
  currPopulation = 8000000; //8 million (three zeroes are added when printing the text to make it 8 billion)
  setInitialValues();
  
  rwat = 101;
  bwat = 173;
  gwat = 207;
  
  rter = 35;
  bter = 82;
  gter = 29;
  
  icexsize = 100;
  iceysize = 40;
  
}

void setInitialValues(){
  w = new Weather();
  w.checkWeather();
  occuringDisasters = new ArrayList();
  temp = 10;
  moisturelvl = 50;
  AtStrength = 2.0;
  disasterChance = 1;
  moistureLevel.setValue(moisturelvl);
  temperature.setValue(temp);
  disaster.setValue(disasterChance);
  atmosphere.setValue(AtStrength);

}

void draw() {
  background(0);
  //Star in background
  drawStars();
  printPopulation();
  growPopulation();
  //TEST VALUES HERE
  //if (temp == 20){
  //  drawBasePlanet();
    
  //}
  
  //if (temp == 30) {
  //  drawHotPlanet();
  //}

  //if (temp == 0) {
  //  drawColdPlanet();
  //}
  
  //if (moisturelvl == 0){
  //  drawDryPlanet();
  //}
  
  //GUI TEMP TYPES
  if (temp > 0 && temp < 30){
  
    if (moisturelvl < 30){
      drawDryPlanet();
    }
    
    if (moisturelvl > 60){
      drawWateredPlanet();
    }
    
    if (moisturelvl >= 30 && moisturelvl <= 60){
      drawNormalPlanet();
    }
    
  }
  
  if (temp >= 30){

    if (moisturelvl < 70){
       drawHotPlanet();
    }
    
    if (moisturelvl > 70){
      drawNormalPlanet();
    }
    
  }
  
  if (temp <= 0){
    
     if (moisturelvl < 60){
       drawColdPlanet();
    }
    
    if (moisturelvl > 60){
      drawWateredPlanet();
    }
    
  }


  drawAtmosphere();
 
  chooseDisaster(disasterChance);
  for(NaturalDisaster d : occuringDisasters) {
    d.drawMe();
    d.move();
  }  
  w.checkWeather();
  drawWeather(w);
  narrator();
  

  
}
