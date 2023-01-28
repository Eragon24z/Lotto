class ZahlenStein {
  
  int breite = width/3*2/10;
  int hoehe = height/9;
  
  int feldPositionX;
  int feldPositionY;
  int feldNummer;
  boolean passed = false;
  
  private void kaestchen(){
    rect(feldPositionX, feldPositionY, breite, hoehe);
    fill(0, 0, 0);
    if (feldNummer<10){
      text(feldNummer, feldPositionX+(breite/2), feldPositionY+(hoehe/2));
    }
    else{
      text(feldNummer, feldPositionX+(breite/3), feldPositionY+(hoehe/2));
    }
  }
  public ZahlenStein(int feldX, int feldY, int feldNumme) {
    fill(255, 255, 255);
    feldPositionX = feldX*breite;
    feldPositionY = feldY*hoehe;
    feldNummer = feldNumme;
    kaestchen();
    
    
  }
  
  public void farbwechsel() {
    fill(0, 255, 0);
    textSize(20);
    kaestchen();
    passed = true;
  }  
} 
