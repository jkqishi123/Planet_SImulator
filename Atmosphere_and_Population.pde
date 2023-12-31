void drawAtmosphere() {
  numCircles = AtStrength*10;
  //to create a gradient almost like the layers of the atmosphere
  for (int i=0; i<numCircles; i++) {
    float radius = 350/2 + i*2; //350 is the diameter of the planet
    float colorGap = 255/numCircles;
    color c = color(150-i*colorGap, 150-i*colorGap, 255-i*colorGap);
    strokeWeight(3);
    stroke(c);
    noFill();
    circle(width/2, height/2, radius*2);
    
    AtRadius = radius;
  }
  
}

void printPopulation(){
  
  textSize(30);
  fill(255);
  text("Population: " + currPopulation + "000", 0, 30);
  
}

void decreasePopulation(NaturalDisaster d) {
    currPopulation -= d.damage/1000;
    if(currPopulation<0)
      currPopulation = 0;
}

void growPopulation(){
  float growthPercent = 1;
   if (temp > 0 && temp < 30){
  
    if (moisturelvl < 30)
      growthPercent = 0.99998; //dry planet
    
    if (moisturelvl > 60)
      growthPercent = 1.00002; //watered planet
    
    if (moisturelvl >= 30 && moisturelvl <= 60)
      growthPercent = 1.00003; //normal planet
  }
  
  else if (temp >= 30){

    if (moisturelvl < 70)
       growthPercent = 0.99999; //hot planet
    
    if (moisturelvl > 70)
      growthPercent = 1.00003; //normal planet
  }
  
  else if (temp <= 0){
    
     if (moisturelvl < 60){
       growthPercent = 0.99998; //cold planet
    }
    
    if (moisturelvl > 60){
      growthPercent = 1.00002; //watered planet
    }
    
  }
  
  if(AtStrength ==0)
    currPopulation =0;
  
  else if(AtStrength<=1)
    growthPercent -= 0.00002;
  
  else if(AtStrength<=2)
    growthPercent -= 0.00001;
  
  else if(AtStrength<=3)
    growthPercent += 0.00001;
  
  else if(AtStrength<=4)
    growthPercent += 0.000015;
  
  else
    growthPercent += 0.00002;
  
  currPopulation *= growthPercent;
}
