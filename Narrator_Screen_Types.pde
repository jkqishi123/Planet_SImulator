//draws the narrator
void reporterText(){
   fill(0);
   textSize(9.5);
   text("A new Natural Disaster has occurred:\n" +n1+n2+n3+n4,31,564);
   
   fill(255, 0, 0);
   textSize(55);
   text("!", 215, 510);
}

void drawReporter(){
    noStroke();
    //news border
    fill(255, 105, 67);
    rect(20, 440, 290, 150);
    
    //news background
    fill(240, 205, 168);
    rect(25, 445, 280, 138);
     
    //reporter head: alien
    
    fill(147, 199, 109);
    ellipse(80,480, 35, 43);
    
    stroke(0,0,0);
    strokeWeight(5);
    line(67, 472, 73, 482);
    line(87, 482, 92, 472);
    
    //body
    stroke(147, 199, 109);
    strokeWeight(5);
    line(75, 510, 60, 530);
    line(85, 510, 100, 530);
    line(80, 500, 80, 540);
    strokeWeight(15);
    line(80, 515, 80, 540);
   
     
    noStroke();
  
    //news text backing
    fill(255);
    rect(25, 535, 280, 50);
    fill(0, 0, 255);
    rect(25, 535, 280, 2);
    
    //breaking news text
    fill(0,0,245);
    textSize(14);
    text("BREAKING NEWS:",32,551);
    //screen
    fill(0);
    rect(175, 460, 100, 65);
  }

void drawMeteor(){ 
  noStroke();
  //screen
  fill(0);
  rect(175, 460, 100, 65);
    
  //1: meteor
  //fire trail
  fill(207, 67, 29);
  triangle(210, 495, 260, 500, 235, 490);
  triangle(205, 490, 225, 485, 265, 495);
  
  
  //actual meteor body
  fill(105, 100, 90);
  circle(215, 490, 25);
}
  
  
void drawTornado(){ 
  //screen
  fill(0);
  rect(175, 460, 100, 65);
  
  //2: tornado
  fill(162, 171, 176);
  ellipse(225,480, 35, 12);
  fill(148, 153, 156);
  ellipse(225,485, 38, 12);
  fill(162, 171, 176);
  ellipse(225,490, 32, 12);
  fill(148, 153, 156);
  ellipse(225,495, 30, 12);
  fill(162, 171, 176);
  ellipse(225,500, 28, 12);
  fill(148, 153, 156);
  ellipse(225,505, 24, 12);
  fill(162, 171, 176);
  ellipse(225,510, 20, 12);
  
}
  
  
void drawEarthquake(){
  //3: earthquake
  fill(143, 187, 217);
  circle(225, 495, 35);
  
  //cracks
  stroke(0);
  strokeWeight(2);
  line(210,490,220,500);
  line(220,500,225,490);
  line(225,490,235,506);
  noStroke();

}



void drawHurricane(){
  //screen
  fill(0);
  rect(175, 460, 100, 65);
  
  //hurricane
  fill(0);
  stroke(148, 153, 156);
  strokeWeight(2);
  circle(225, 490, 45);
  noStroke();
  
  fill(148, 153, 156);
  ellipse(225,490, 34, 30);
  fill(0);
  ellipse(225,490, 24, 10);
  
  fill(0);
  stroke(148, 153, 156);
  circle(225, 490, 30);
  
  noStroke();

}
