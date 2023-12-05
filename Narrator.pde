String n1 = "";
String n2 = "";
String n3 = "";
String n4 = "";

void narrator(){
  
 for(NaturalDisaster d : occuringDisasters) {
  drawReporter();


    if (d.name.equals("meteor")){ 
      if(d.occuring){

            drawMeteor();
            n1 = " meteor, ";    
         
      }
        else
           n1 = "";
          
    }
 
     

    if (d.name.equals("tornado")){
      if(d.occuring){
        n2 = " tornado ";
        drawTornado();
      }
    
      else
        n2 = "";
        
    }
        
   
   
    if (d.name.equals("earthquake")){
      if(d.occuring){
        n3 = " earthquake ";
        drawEarthquake(); 
      }

      else
        n3 = "";
        
    }
   
    if (d.name.equals("hurricane")){
      if(d.occuring){
        n4 = " hurricane ";
        drawHurricane(); 
      }
   
      else
        n4 = "";
       
    }
   
      reporterText();
  }
     
  
 }

  
  
  
  
  
  
  
