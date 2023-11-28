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
    if (moistureLevel > 50 && temperature > 30) {
      weather = "Thunder";
      println(weather);
    }
    else if (moistureLevel > 60 && temperature > 0) {
      weather = "Rainy";
      println(weather);
    }
    else if (moistureLevel > 60 && temperature < 0) {
      weather = "Snowy";
      println(weather);
    }
    else if (moistureLevel < 20 && temperature > 20) {
      weather = "Sunny";
      println(weather);
    }
    else if (moistureLevel > 30 && temperature > 10) {
      weather = "Cloudy";
      println(weather);
    }
  }
  
}
