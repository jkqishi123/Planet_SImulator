class Weather {
  //Variable
  int xPos;
  int yPos;
  String weather;
  float randomness;
  boolean occur = false;
  
  Weather() {
    this.weather = "Rainy";
    //Change the symbol coodinate here
    this.xPos = 650;
    this.yPos = 100;
  }
  
  //Method
  void checkWeather() {

    if (moisturelvl > 50 && temp > 30) {
     this.weather = "Thunder";
    }
    else if (moisturelvl > 60 && temp > 0) {
     this. weather = "Rainy";
    }
    else if (moisturelvl > 60 && temp < 0) {
      this.weather = "Snowy";
    }
    else if (moisturelvl < 20 && temp > 0) {
      this.weather = "Sunny";
    }
    else if (moisturelvl > 30 && temp > 10) {
      this.weather = "Cloudy";
    }
  }
}  

void drawWeather(Weather w) {
   if (w.weather == "Thunder") {
     fill(100);
     noStroke();
     circle(w.xPos-20,w.yPos,30);
     circle(w.xPos,w.yPos-5,40);
     circle(w.xPos+20,w.yPos+5,25);
     fill(230,200,0);
     quad(w.xPos-10,w.yPos+12,w.xPos,w.yPos+12,w.xPos-7,w.yPos+40,w.xPos-15,w.yPos+40);
     quad(w.xPos-7,w.yPos+32,w.xPos+2,w.yPos+35,w.xPos-7,w.yPos+60,w.xPos-17,w.yPos+60);
   }
   else if (w.weather == "Rainy") {
     fill(150);
     noStroke();
     circle(w.xPos-20,w.yPos,30);
     circle(w.xPos,w.yPos-5,40);
     circle(w.xPos+20,w.yPos+5,25);
     fill(0,0,255);
     quad(w.xPos,w.yPos+20,w.xPos+1,w.yPos+20,w.xPos+1,w.yPos+40,w.xPos-1,w.yPos+40);
     quad(w.xPos+10,w.yPos+20,w.xPos+11,w.yPos+20,w.xPos+11,w.yPos+40,w.xPos+9,w.yPos+40);
     quad(w.xPos-10,w.yPos+20,w.xPos-9,w.yPos+20,w.xPos-9,w.yPos+40,w.xPos-11,w.yPos+40);
     quad(w.xPos-20,w.yPos+20,w.xPos-19,w.yPos+20,w.xPos-19,w.yPos+40,w.xPos-21,w.yPos+40);
   }
   else if (w.weather == "Snowy") {
     fill(190);
     noStroke();
     circle(w.xPos-20,w.yPos,30);
     circle(w.xPos,w.yPos-5,40);
     circle(w.xPos+20,w.yPos+5,25);
     strokeWeight(2);
     stroke(130,230,250);
     line(w.xPos-25,w.yPos+20,w.xPos-25,w.yPos+35);
     line(w.xPos-35,w.yPos+27,w.xPos-15,w.yPos+27);
     line(w.xPos-32,w.yPos+22,w.xPos-17,w.yPos+33);
     line(w.xPos-32,w.yPos+32,w.xPos-17,w.yPos+22);
     strokeWeight(3);
     line(w.xPos+10,w.yPos+25,w.xPos+10,w.yPos+50);
     line(w.xPos-5,w.yPos+38,w.xPos+25,w.yPos+38);
     line(w.xPos-3,w.yPos+26,w.xPos+21,w.yPos+50);
     line(w.xPos-3,w.yPos+50,w.xPos+21,w.yPos+26);
   }
   else if (w.weather == "Sunny") {
     noStroke();
     fill(240,200,0);
     circle(w.xPos,w.yPos,50);
     strokeWeight(3);
     stroke(240,200,0);
     line(w.xPos,w.yPos-50,w.xPos,w.yPos+50);
     line(w.xPos-50,w.yPos,w.xPos+50,w.yPos);
     line(w.xPos-35,w.yPos-35,w.xPos+35,w.yPos+35);
     line(w.xPos-20,w.yPos+45,w.xPos+20,w.yPos-45);
     line(w.xPos-45,w.yPos+20,w.xPos+45,w.yPos-20);
     line(w.xPos-35,w.yPos+35,w.xPos+35,w.yPos-35);
     line(w.xPos+20,w.yPos+45,w.xPos-20,w.yPos-45);
     line(w.xPos-45,w.yPos-20,w.xPos+45,w.yPos+20);
   }
   else if (w.weather == "Cloudy") {
     fill(220);
     noStroke();
     circle(w.xPos-20,w.yPos,30);
     circle(w.xPos,w.yPos-5,40);
     circle(w.xPos+20,w.yPos+5,25);
     fill(205);
     circle(w.xPos+10,w.yPos-5,30);
     circle(w.xPos+30,w.yPos-5,40);
     circle(w.xPos+50,w.yPos,25);
     fill(190);
     circle(w.xPos,w.yPos+10,30);
     circle(w.xPos+20,w.yPos+5,40);
     circle(w.xPos+40,w.yPos+15,25);
   }
}
