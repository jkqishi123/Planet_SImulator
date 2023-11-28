void drawBasePlanet(){
  //Planet: normal
  //water or ocean area
  fill(rwat, bwat, gwat);
  circle(width/2, height/2, 350);
  noStroke();
  
  //terrain area
  fill(rter, bter, gter);
  ellipse(373, 300, 105, 150);
  quad(340, 240, 380, 200, 450, 270, 370, 340);
  quad(400,250, 430, 240, 500, 260, 370, 300);
  quad(430,250, 470, 270, 460, 350, 390, 370);
  quad(450, 280, 510, 310, 480, 350, 430, 370);
  
  ellipse(638, 300, 80, 120);
  quad(525, 220, 590, 230, 625, 282, 595, 297);
  quad(580, 230, 550, 290, 665, 330, 640, 230);
  quad(560, 370, 580, 400, 655, 350, 620, 270);
  triangle(500, 400, 520, 420, 480, 405);
  triangle(450, 410, 460, 415, 440, 420);
  triangle(600, 190, 610, 203, 590, 207);
  
  //ice area top
  fill(255);
  ellipse(500, 143, icexsize, iceysize);
  
  //ice area bottom
  ellipse(500, 460, icexsize, iceysize - 15);
  
}


void drawColdPlanet(){
  //reforms ice if melted.
  if (icexsize < 100){
    icexsize += 1;
  }
  
  if (iceysize < 40){
    iceysize += 1;
  }
  
  //terrain colour change
  if (rter < 176){
    rter += 1;
  }
  
  if (rter > 176){
    rter -= 1;
  }
  
  if (bter < 205){
    bter += 1;
  }
  if (bter > 205){
    bter -= 1;
  }
  
   if (gter < 217){
    gter += 1;
  }
  if (gter > 217){
    gter -= 1;
  }
  
  
  //water colour change
  if (rwat < 227){
    rwat += 1;
  }
  
  if (rwat > 227){
    rwat -= 1;
  }
  
  if (bwat < 251){
    bwat += 1;
  }
  if (bwat > 251){
    bwat -= 1;
  }
  
   if (gwat < 252){
    gwat += 1;
  }
  if (gwat > 252){
    gwat -= 1;
  }
  
 drawBasePlanet(); 

}




void drawHotPlanet(){
  //terrain colour change
  if (rter < 69){
    rter += 1;
  }
  if (rter > 69){
    rter -= 1;
  }
  
  if (bter > 27){
    bter -= 1;
  }
  if (bter < 27){
    bter += 1;
  }
  
  if (gter > 24){
    gter -= 1;
  }
  if (gter < 24){
    gter += 1;
  }
    
  //water colour change
  rwat += 1;
  
  if (gwat > 80){
    gwat -= 1;
  }
  if (gwat < 80){
    gwat += 1;
  }
  
   if (bwat > 60){
    bwat -= 1;
  }
   if (bwat < 60){
    bwat += 1;
  }
  
  
  // ice melt
  if (icexsize > 0) {
    icexsize -= 0.5;
  }
  if (iceysize > 0) {
    iceysize -= 0.5;
  }
  
  
  drawBasePlanet();
}

void drawDryPlanet(){
  // ice melt
  if (icexsize > 0) {
    icexsize -= 0.5;
  }
  if (iceysize > 0) {
    iceysize -= 0.5;
  }
  
   //terrain colour change
  if (rter < 168){
    rter += 1;
  }
  
  if (rter > 168){
    rter -= 1;
  }
  
  if (bter < 137){
    bter += 1;
  }
  if (bter > 137){
    bter -= 1;
  }
  
   if (gter < 79){
    gter += 1;
  }
  if (gter > 79){
    gter -= 1;
  }
  
  
  //water colour change
  if (rwat < 224){
    rwat += 1;
  }
  
  if (rwat > 224){
    rwat -= 1;
  }
  
  if (bwat < 210){
    bwat += 1;
  }
  if (bwat > 210){
    bwat -= 1;
  }
  
   if (gwat < 184){
    gwat += 1;
  }
  if (gwat > 184){
    gwat -= 1;
  }
    
  drawBasePlanet();
  
}

void drawWateredPlanet(){
// ice melt (water melts snow)
  if (icexsize > 0) {
    icexsize -= 0.5;
  }
  if (iceysize > 0) {
    iceysize -= 0.5;
  }
  
   //terrain colour change: to blue to show that water is taking over land.
  if (rter < 52){
    rter += 1;
  }
  
  if (rter > 52){
    rter -= 1;
  }
  
  if (bter < 99){
    bter += 1;
  }
  if (bter > 99){
    bter -= 1;
  }
  
   if (gter < 95){
    gter += 1;
  }
  if (gter > 95){
    gter -= 1;
  }
 
  drawBasePlanet();
  
}
