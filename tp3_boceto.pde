//https://youtu.be/DtrrHUQ9XTI
String estado; 
PFont fuente;
PFont fuente2;
PFont fuente3;
color relleno;
float xl = 0;
int vel = 8;
int contadorTiempo;
int colorUwu = 1;
int cant = 25;  //cantidad de celdas
//int cx = 25;
//int cy = 25;
int tam;
int go;
boolean mostrarIndices = true;
/*
int [] cx = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22};
int [] cy = {4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19};
boolean [][] colores = new boolean [cx][cy];
int [][] colores = new int[cx][cy]*/
int[][] verdeo = new int[cant][cant];


void setup(){
  size( 900, 900 );
  fuente = createFont ("Starjout.ttf", 72);
  fuente2 = createFont ("Stjldbl1.ttf", 72);
  fuente3 = createFont ("Arial-Black-48.vlw", 15);
  textAlign( CENTER, CENTER );
  estado = "PixelWars";
  contadorTiempo = 0;
  go = 0;
  relleno = color( 255 );
  tam = width / cant;  


  //asignacion
  for( int i = 0 ; i<cant ; i++){
    for( int j = 0 ; j<cant ; j++){
      verdeo[i][j] = 0;
    }
  }
}


void draw(){
  
//estados y eventos

  if ( estado.equals("PixelWars") ) {
    background( 0 );
    estrellas();
    go = 0;
    contadorTiempo = 0;
    textFont (fuente);
    textSize( 80 );
    fill(244,245,82);
    text( estado, width/2, height/2-300 );
    textFont (fuente2);
    textSize( 50 );
    text( "Bienvenido a PixelWars\n Presione 'c' para continuar", width/2, height/2+100 ); 
    logos();
    
  } else if ( estado.equals("¿Cómo Jugar?") ) {
    background( 25 );
    estrellas2();
    go = 0;
    contadorTiempo = 0;
    textFont (fuente);
    textSize( 80 );
    fill(244,245,82);
    text ("PixelWars", width/2, height/2-300);
    fill(0);
    text ("PixelWars", width/2+5, height/2-295);
    textSize(50);
    fill(244,245,82);
    text( estado, width/2+5, height/2-145 ); 
    fill(0);
    text( estado, width/2, height/2-150 );  
    //boton mouse 
    pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+200) <= 25 ) {
      fill( 244,245,35 );
    } else {
      fill( 172,173,24  );
    }
    stroke(0);
    strokeWeight (3);
    rect( width/2-145, height/2+205, 300, 50 );
    rect( width/2-150, height/2+200, 300, 50 );
    popStyle();
    stroke ( 244,245,35);
    rect (200,370, 500, 250);
    fill (244,245,35);
    textFont (fuente2);
    textSize (20);
    text ("objetivo: colorear las casillas \n con el número indicado. \n Tienes     segundos para lograrlo", 450, 450);
    textSize (15);
    text ( "clickear para pintar.\n teclear el número indicado\n para cambiar de color.", 448, 550);
    textFont (fuente);
    textSize (20);
    text ("100", 334, 483);
    textSize (40);
    fill(0);
    text ("Start", 455, 670);
    fill(244,245,35);
    text ("Start", 450, 665);
    cascos();
    stroke (0);
  } else if ( estado.equals("GO") ) {
    contadorTiempo = contadorTiempo + vel;
    go++;
    contadorTiempo++;
    println( contadorTiempo );
    println( contadorTiempo/60 );
    
    //tiempo para perder
    if ( contadorTiempo >= 1000*60 ) {
      estado = "perder";}
      if( ganar() ){  //si la funcion ganar devuelve true
      estado = "ganar";
    }
   for( int x = 0 ; x < cant ; x++ ){
    for( int y = 0 ; y < cant ; y++ ){
      
      if( verdeo[x][y] == 1){
        fill( 41,95,20 );
      } else if( verdeo[x][y] == 2) {
        fill (107, 222, 85);
      } else if( verdeo[x][y] == 3) {
        fill (255, 191, 223);
      }else if( verdeo[x][y] == 4) {
        fill (245, 94, 170);
      }else if( verdeo[x][y] == 5) {
        fill (240);
      }else if( verdeo[x][y] == 6) {
        fill (0);
      }else if( verdeo[x][y] == 7) {
        fill (147, 69, 47);
      }else if( verdeo[x][y] == 8) {
        fill (178, 118, 83);
      }else{
        fill( 255 );
      }
      rect( x * tam, y * tam, tam, tam );
      if( mostrarIndices ){
        textFont (fuente3);
        vo();
        vc();
        r();
        f();
        n();
        b();
        mo();
        mc();
        }
      }
    }
    /*pa ganar no funciona
    for (int i = 0; i == cx.length; i++) {
     for (int j = 0; j== cy.length; j++){
       if (cx[i] == colorUwu && cy[j] == colorUwu){
        estado.equals("ganar");
        background( 200, 200, 0 );
        text( estado, width/2, height/2 );
    }
   }
  }
  //pa ganar no funciona
  if(colores [0][0] = colorUwu){     
       estado =("ganar");

  }*/
  fill (0);
  rect (76, 76, 76, 76);
  rect (4+go*10, 779, 100, 80);
  strokeWeight(3);
  stroke (244,245,35);
  rect (0+go*10, 775, 100, 80);
  rect (72, 72, 72, 72);
  fill(244,245,35);
  textFont (fuente);
  textSize (50);
  text (contadorTiempo/60, 110, 95);
  text ("Go!", -100+go*10, 700, 300,200);
  fill(0);
  noStroke();
  rect (206,86, 500, 50);
  stroke(244,245,35);
  rect (200,80, 500, 50);
  fill(244,245,35);
  textFont (fuente2);
  textSize (20);
  text ("Presiona 's' para guardar tu dibujo", 450, 100);
  strokeWeight(1);
  stroke(0);

} 
   else if ( estado.equals("ganar") ) {
    background( 25 );
    estrellas2();
    go = 0;
    contadorTiempo = 0;
    textFont (fuente);
    textSize( 80 );
    fill(244,245,82);
    text ("PixelWars", width/2, height/2-300);
    fill(0);
    text ("PixelWars", width/2+5, height/2-295);
    textSize(50);
    fill(244,245,82);
    text( "you win", width/2+5, height/2-145 ); 
    fill(0);
    text( "you win", width/2, height/2-150 ); 
    stroke ( 244,245,35);
    rect (200,370, 500, 250);
    fill (244,245,35);
    pushStyle();
    fill (244,245,35);
    textFont (fuente2);
    textSize (20);
    text ("          \n Rojas Rabassio juliana\n              \n jerometer J Seraphine J Ruyy", 450, 450);
    textFont (fuente);
    textSize (25);
    text ("Creado por", 455, 400);
    text ("Asesorado por", 455, 463);
    textSize(30);
    fill(0);
    text ("Presiona Enter para reiniciar", 455, 670);
    fill(244,245,35);
    text ("Presiona Enter para reiniciar", 450, 665);
    popStyle();
    stroke(0); } 

  
      else if ( estado.equals("perder") ) {
background( 25 );
    estrellas2();
    go = 0;
    contadorTiempo = 0;
    textFont (fuente);
    textSize( 80 );
    fill(244,245,82);
    text ("PixelWars", width/2, height/2-300);
    fill(0);
    text ("PixelWars", width/2+5, height/2-295);
    textSize(50);
    fill(244,245,82);
    text( "game over", width/2+5, height/2-145 ); 
    fill(0);
    text( "game over", width/2, height/2-150 ); 
    stroke ( 244,245,35);
    rect (200,370, 500, 250);
    fill (244,245,35);
    pushStyle();
    fill (244,245,35);
    textFont (fuente2);
    textSize (20);
    text ("          \n Rojas Rabassio juliana\n              \n jerometer J Seraphine J Ruyy", 450, 450);
    textFont (fuente);
    textSize (25);
    text ("Creado por", 455, 400);
    text ("Asesorado por", 455, 463);
    textSize(30);
    fill(0);
    text ("Presiona Enter para reiniciar", 455, 670);
    fill(244,245,35);
    text ("Presiona Enter para reiniciar", 450, 665);
    popStyle();
    stroke(0);
    
  } 
}
void mousePressed(){
  for( int i = 0 ; i<cant ; i++){
    for( int j = 0 ; j<cant ; j++){
      boolean estoyDentro = mouseX > i*tam && mouseX < i*tam+tam && mouseY > j*tam && mouseY < j*tam+tam ;      
      if( estoyDentro ){
        if ( verdeo [i][j] == colorUwu){  
          verdeo [i][j] = 0;
        } else {
          verdeo [i][j] = colorUwu;
         }
      }
    }
  }
if ( estado.equals("¿Cómo Jugar?") && dist( mouseX, mouseY, width/2, height/2+300) <= 500 ) {
    estado = "GO";
  }
}

void keyPressed(){

  if( key == ' ' ){
    mostrarIndices = !mostrarIndices;
  }
  if( key == 's' || key == 'S' ){
    saveFrame();
    println( "Dibujo Guardado" );
  } 
  if (key == '1' || key == '1'){
    colorUwu = 1;
 }
 if (key == '2' || key == '2'){
    colorUwu = 2;
 }
  if (key == '3' || key == '3'){
    colorUwu = 3;
 }
 
  if (key == '4' || key == '4'){
    colorUwu = 4;
 }
 if (key == '5' || key == '5'){
    colorUwu = 5;
 }
 if (key == '6' || key == '6'){
    colorUwu = 6;
 }
 if (key == '7' || key == '7'){
    colorUwu = 7;
 }
 if (key == '8' || key == '8'){
    colorUwu = 8;
 }
  if ( estado.equals("PixelWars") && keyCode == 'c' || keyCode == 'C' ) {
    estado = "¿Cómo Jugar?";
  }
  //condicion para reiniciar
  if ( keyCode == ENTER ) {
    if ( estado.equals("perder") || estado.equals("ganar") ) {
      reiniciar();
    }
  }
}
void reiniciar() {
  estado = "PixelWars";
  contadorTiempo = 0;
  relleno = color( 0 );  
}
