/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw2(PApplet appc, GWinData data) { //_CODE_:window1:583834:
  appc.background(230);
} //_CODE_:window1:583834:

public void moistureLevelChange(GSlider source, GEvent event) { //_CODE_:moistureLevel:810801:
  moisturelvl = moistureLevel.getValueI();
} //_CODE_:moistureLevel:810801:

public void tempChange(GSlider source, GEvent event) { //_CODE_:temperature:206955:
  temp = temperature.getValueI();
} //_CODE_:temperature:206955:

public void disasterChanceLevel(GSlider source, GEvent event) { //_CODE_:disaster:792172:
  disasterChance = disaster.getValueF();
} //_CODE_:disaster:792172:

public void atmoChange(GSlider source, GEvent event) { //_CODE_:atmosphere:814010:
  AtStrength = atmosphere.getValueF();
} //_CODE_:atmosphere:814010:

public void populationChange(GSlider source, GEvent event) { //_CODE_:population:801352:
  setInitialValues();
  currPopulation = population.getValueI();
} //_CODE_:population:801352:

public void pausePressed(GButton source, GEvent event) { //_CODE_:pause:604289:
  if(running){
    noLoop();
    pause.setText("Resume");
    pause.setLocalColorScheme(1);
  }
  else{
    loop();
    pause.setText("Pause");
    pause.setLocalColorScheme(0);

  }
  
  running = !running;
} //_CODE_:pause:604289:

public void resetClicked(GButton source, GEvent event) { //_CODE_:resetButton:525790:
    setInitialValues();
    currPopulation = 8000000;
    population.setValue(currPopulation);
    
} //_CODE_:resetButton:525790:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 100, 420, 300, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw2");
  moistureLevel = new GSlider(window1, 3, 28, 209, 45, 10.0);
  moistureLevel.setShowValue(true);
  moistureLevel.setShowLimits(true);
  moistureLevel.setLimits(50, 0, 100);
  moistureLevel.setShowTicks(true);
  moistureLevel.setNumberFormat(G4P.INTEGER, 0);
  moistureLevel.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  moistureLevel.setOpaque(false);
  moistureLevel.addEventHandler(this, "moistureLevelChange");
  label1 = new GLabel(window1, -1, 6, 103, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Moisture Level");
  label1.setOpaque(false);
  label2 = new GLabel(window1, 3, 76, 80, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Temperature");
  label2.setOpaque(false);
  temperature = new GSlider(window1, 2, 101, 210, 45, 10.0);
  temperature.setShowValue(true);
  temperature.setShowLimits(true);
  temperature.setLimits(10, -20, 40);
  temperature.setShowTicks(true);
  temperature.setNumberFormat(G4P.INTEGER, 0);
  temperature.setLocalColorScheme(GCScheme.RED_SCHEME);
  temperature.setOpaque(false);
  temperature.addEventHandler(this, "tempChange");
  label3 = new GLabel(window1, -2, 153, 122, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Chance of Disaster");
  label3.setOpaque(false);
  disaster = new GSlider(window1, 2, 170, 210, 45, 10.0);
  disaster.setShowValue(true);
  disaster.setShowLimits(true);
  disaster.setLimits(1.0, 0.0, 10.0);
  disaster.setShowTicks(true);
  disaster.setNumberFormat(G4P.DECIMAL, 0);
  disaster.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  disaster.setOpaque(false);
  disaster.addEventHandler(this, "disasterChanceLevel");
  label4 = new GLabel(window1, 220, 27, 80, 28);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Atmospheric Strength");
  label4.setOpaque(false);
  atmosphere = new GSlider(window1, 312, 59, 167, 100, 10.0);
  atmosphere.setShowValue(true);
  atmosphere.setShowLimits(true);
  atmosphere.setTextOrientation(G4P.ORIENT_LEFT);
  atmosphere.setRotation(PI/2, GControlMode.CORNER);
  atmosphere.setLimits(2.0, 0.0, 5.0);
  atmosphere.setShowTicks(true);
  atmosphere.setNumberFormat(G4P.DECIMAL, 2);
  atmosphere.setOpaque(false);
  atmosphere.addEventHandler(this, "atmoChange");
  label5 = new GLabel(window1, 318, 28, 80, 28);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Population (thousands)");
  label5.setOpaque(false);
  population = new GSlider(window1, 416, 57, 167, 114, 10.0);
  population.setShowValue(true);
  population.setShowLimits(true);
  population.setTextOrientation(G4P.ORIENT_LEFT);
  population.setRotation(PI/2, GControlMode.CORNER);
  population.setLimits(8000000, 10000, 8000000);
  population.setShowTicks(true);
  population.setNumberFormat(G4P.INTEGER, 0);
  population.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  population.setOpaque(false);
  population.addEventHandler(this, "populationChange");
  pause = new GButton(window1, 110, 250, 80, 30);
  pause.setText("Pause");
  pause.setLocalColorScheme(GCScheme.RED_SCHEME);
  pause.addEventHandler(this, "pausePressed");
  resetButton = new GButton(window1, 230, 250, 80, 30);
  resetButton.setText("Reset");
  resetButton.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  resetButton.addEventHandler(this, "resetClicked");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GSlider moistureLevel; 
GLabel label1; 
GLabel label2; 
GSlider temperature; 
GLabel label3; 
GSlider disaster; 
GLabel label4; 
GSlider atmosphere; 
GLabel label5; 
GSlider population; 
GButton pause; 
GButton resetButton; 
