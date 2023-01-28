ZahlenStein[][] feld;
int aktiveZahl;
int[] zahlPos;
static int grosseBreite;
static int kleineBreite;

void setup(){
  size(720, 477);
  grosseBreite = width/3*2;
  kleineBreite = width/3;
  background(255, 0, 0);
  fill(0, 0, 255);
  rect(0, 0, width/3*2, height);
  textSize(20);
  strokeWeight(4);
  zahlPos = new int[]{(width/3*2)+(width/6), height/2}; 
  
  
  feld = new ZahlenStein[9][10];
  int k = 0;
  for (int j = 0; j<9; j++){
    for (int i = 0; i<10; i++){
      k++;
      feld[j][i] = new ZahlenStein(i, j, k);
    }
  }
  textSize(104); 
}
int x;
int y;
int counter;
boolean firstCall;
void draw() {
  if (counter == 90){
          return;
  }
  if (!firstCall) {
    if (keyPressed) {
      if (key == 32) {
        firstCall = true;
        counter++;
        
        do {
          aktiveZahl = int(random(1, 91));
          
          x = (aktiveZahl/10);
          if (aktiveZahl-((aktiveZahl/10)*10) == 0) {
            y = 9;
            x -= 1;
          } else {
            y = (aktiveZahl-((aktiveZahl/10)*10))-1;
          }
        }
        while(feld[x][y].passed);
        fill(220,0,0);
        rect(grosseBreite, 0, kleineBreite, height);
        
        textSize(100);
        fill(0, 0, 0);
        zahlDarstellen(aktiveZahl);
        
        feld[x][y].farbwechsel();
      }
    } 
  }
}

void keyReleased(){
  firstCall = false;
}

public void zahlDarstellen(int x) {
  text(x, zahlPos[0], zahlPos[1]);
}
