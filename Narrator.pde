String n1 = "";
String n2 = "";
String n3 = "";
String n4 = "";

void narrator(){
  
 for(NaturalDisaster d : disasters) {
  drawReporter();

   if (d.occuring){
     if (d.name.equals("meteor")){ //to check if a natural disaster is occuring, you can use if(d.occuring)
        float dist = dist(d.pos.x, d.pos.y, width/2, height/2);
          if(dist<AtRadius+150){
            drawMeteor();
            n1 = " meteor, ";
            drawMeteor();
          }
          
         else{
            n1 = "";
          }
          
           }
 
     

   if (d.occuring){
    if (d.name.equals("tornado")){
       n2 = " tornado ";
 
    }
    else{
          n2 = "";
        }
        
   }
   
   if (d.occuring){
    if (d.name.equals("earthquake")){
       n3 = " earthquake ";

    }
    else{
          n3 = "";
        }
   }
   
   if (d.occuring){
    if (d.name.equals("hurricane")){
       n4 = " hurricane ";
   
    }
    
    else{
          n4 = "";
        }
   }
      reporterText();
  }
     
  
 }

  
  
  
  
  
  
  
}
