import g4p_controls.*;
boolean running = true;
int temp, currPopulation;
int moisturelvl;
float AtStrength,disasterChance;

//Water and terrain integers
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
  
  //intial values of the base planet
  //RGB of water
  rwat = 101;
  bwat = 173;
  gwat = 207;
  
  //RGB of terrain
  rter = 35;
  bter = 82;
  gter = 29;
  
  //Intial ice x and y sizes
  icexsize = 100;
  iceysize = 40;
  
}

// Setting the intial values
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
  
  //Population 
  printPopulation();
  growPopulation();
  
  
  //GUI TEMP TYPES
  
  //For normal planet...
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
  
  
  //For hot planet...
  if (temp >= 30){

    //if moisture is more than 70, the hot planet will be drawn
    if (moisturelvl < 70){
       drawHotPlanet();
    }
    
    //if moisture is less than 70, the normal planet will be drawn
    if (moisturelvl > 70){
      drawNormalPlanet();
    }
    
  }
  
  //for cold planet...
  if (temp <= 0){
    
    //if moisture is less than 60, the cold planet will be drawn
     if (moisturelvl < 60){
       drawColdPlanet();
    }
    
    //if moisture is more than 60, the watered planet will be drawn
    if (moisturelvl > 60){
      drawWateredPlanet();
    }
    
  }

  // drawing the atmosphere...
  drawAtmosphere();
 
 // Selects a natural disaster and draws it.
  chooseDisaster(disasterChance);
  for(NaturalDisaster d : occuringDisasters) {
    d.drawMe();
    d.move();
  }  
  
  //Weather
  w.checkWeather();
  drawWeather(w);
  
  //Narrator
  narrator();
  

  
}
