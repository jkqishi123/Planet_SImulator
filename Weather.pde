class Weather {
  //Variable
  float moistureLevel = 40;
  float temperature = 50;
  PVector position;
  String weather ;
  float randomness;
  boolean occur = false;
  
  //Method
  void checkWeather() {
    if (moistureLevel < 10 && temperature > 20) {
      weather = "Sunny";
      println(weather);
    }
    else if (moistureLevel > 30 && temperature > 10) {
      weather = "Cloudy";
      println(weather);
    }
    
  }
  
}
