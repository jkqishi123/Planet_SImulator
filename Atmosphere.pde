
class Atmosphere{
 float strength, oxygenLevel, numCircles;
 color atmosphereColor;
 
 Atmosphere(){
   this.strength = AtStrength; //from 0 to 2
   this.oxygenLevel = this.strength*50; //from 0 to 100
   this.numCircles = this.strength*10;
   
 }
  
 void drawMe() {
   //to create a gradient almost like the layers of the atmosphere
  for (int i=0; i<this.numCircles; i++) {
    float radius = 350/2 + i*2; //350 is the diameter of the planet
    float colorGap = 255/numCircles;
    color c = color(235-i*colorGap, 235-i*colorGap, 255);
    strokeWeight(3);
    stroke(c);
    noFill();
    circle(width/2, height/2, radius*2);
    
  }
 }
  
}
