Copo copoprueba;

Copo[]copos = new Copo[150];

void setup(){
  size(800,600);
  copoprueba = new Copo(10, 10);
  
  for (int i = 0; i < 150; i = i+1) {
    copos[i] = new Copo(int(random(1,30)), random(2,30));   
  }
}


void draw(){
  background(#dcffff);
  copoprueba.existir();
  copoprueba.caer();
  
  for (int i = 0; i < 150; i = i+1) {
    copos[i].existir();
    copos[i].caer();
  }
  
  
}

void keyPressed() {
  if (key == 'S'  || key == 's') {
    for (int i = 0; i < 150; i = i+1) {
    copos[i].iniciar();
    }
    copoprueba.iniciar();
  }
  
  if (key == 'A'  || key == 'a') {
    copoprueba.detener();
    for (int i = 0; i < 150; i = i+1) {
    copos[i].detener();
  }
  }
}
