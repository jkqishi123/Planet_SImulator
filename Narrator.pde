//Parts of the string for the reporting sentence
String n1 = "";
String n2 = "";
String n3 = "";
String n4 = "";

void narrator(){
  
 for(NaturalDisaster d : occuringDisasters) {
  //draws the reporter underneath the text
  drawReporter();

    // text for when a meteor occurs
    if (d.name.equals("meteor")){ 
      if(d.occuring){

            drawMeteor();
            n1 = " meteor, ";    
         
      }
        else
           n1 = ""; 
          
    }
     
    // text for when a tornado occurs
    if (d.name.equals("tornado")){
      if(d.occuring){
        n2 = " tornado ";
        drawTornado();
      }
    
      else
        n2 = "";
        
    }
        
   
    // text for when an earthquake occurs
    if (d.name.equals("earthquake")){
      if(d.occuring){
        n3 = " earthquake ";
        drawEarthquake(); 
      }

      else
        n3 = "";
        
    }
   
   // text for when a hurricane occurs
    if (d.name.equals("hurricane")){
      if(d.occuring){
        n4 = " hurricane ";
        drawHurricane(); 
      }
   
      else
        n4 = "";
       
    }
   
   // line to report what natural disasters are happening.
      reporterText();
  }
     
  
 }

  
  
  
  
  
  
  
