void narrator(){
 for(NaturalDisaster d : disasters) {
   
   if (d.name.equals("meteor")){ //to check if a natural disaster is occuring, you can use if(d.occuring)
      drawReporter();
      float dist = dist(d.pos.x, d.pos.y, width/2, height/2);
        if(dist<AtRadius+150){
          drawMeteor();
        }
        
    if (d.name.equals("tornado")){
    }
    
    if (d.name.equals("earthquake")){
    }
    
    if (d.name.equals("tsunami")){
    }
    
    if (d.name.equals("hurricane")){
    }
   
    }
 }
}
