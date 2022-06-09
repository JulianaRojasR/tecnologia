//https://youtu.be/4Z8oxMLpscI
PImage mob; 
int cant = 100;
int tam;
int cantidad1 = 200;
int cantidad2 = 200;
int cantidad3 = 200;
float vel = 1;
float x,y,xt,yt;
boolean kpresionada=true;
boolean xPresionada;

void setup() {

  size(800, 800);

  mob = loadImage ("creeper.png");
}

void draw() {
  background(0);
   fill( 130,255,129);
   textSize(40); 
   text("Presiona K para eliminar al enemigo", 100,100); 
   fill( 89,211,87);
   text("Presiona X para obtener la XP", 150, 150); 
   fill(110,183,109);
   text("Presiona K y X nuevamente para reiniciar", 50, 750);

  
  tam = width/cant; 
  noStroke();
  if (kpresionada){
    creeper();
  }
 

  if( xPresionada ){
    ellipsesRandom();
  }

  grillaMouseMira();
}

// xp (circulos)
void keyPressed() { 
  if ( key == 'x' || key == 'X' ) {
    //xPresionada = true;
    xPresionada = !xPresionada;  //forma de switchear cosas cual tecla de luz
    println( xPresionada );
  }
   if ( key == 'k' || key == 'k' ) {
    
    kpresionada = !kpresionada; 
    println( kpresionada );
  }
   
}

void grillaMouseMira(){
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      float distan = dist(mouseX, mouseY, x*tam, y*tam);

      float tono = distan*255/dist(width*2, height*2, 0, 0);
      fill(0, 150, 0, tono*10);
      rect(x*tam, y*tam, tam, tam);
    }
  }
}
