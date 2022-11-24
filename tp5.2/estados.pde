class Estados {
  Fondo fondo;
  Helado helado;
  Abeja[] abeja;
  //int cantAbejas;
  int puntos =0;
  int contadorTiempo;
  int vel = 2;
  PImage fondo1, cartel;
  PFont fuentehelado;
  float anchoab = 100;
  float altoab = 100;
  float ancho = 100;
  float alto = 180;
  float xab = random (0, width/3);
  float yab = random (0, height/3);

  String[] estados= new String [7];
  Estados() {
    estados[0]="¡Bienvenido a Beescape!";
    estados[1]="  Escapa de las abejas para ganar\nNo permitas que coman tu helado";
    estados[2]="Preciona la tecla 'c' para comenzar";
    estados[3]="uwu prueba";
    estados[4]="¡Perdiste el helado!";
    estados[5]="¡Mantuviste el helado!";
    estados[6]="Jugar Otra Vez";
    fondo1 = loadImage ("plaza.jpg");
    cartel = loadImage ("cartel.png");
    fuentehelado = createFont ("helado.otf", 40);
    fondo = new Fondo ();
    helado = new Helado (mouseX, mouseY, ancho, alto);
    // cantAbejas = 5;
    abeja = new Abeja[8];
    for (int i =0; i<1; i++) {
      abeja [0]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [1]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [2]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [3]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [4]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [5]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [6]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [7]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
    }
  }

  void inicio () {
    image (fondo1, 0+500, 0+300, 1000, 600 );
    //imageMode (CENTER);
    //image (cartel, 300, 140, 600, 300);
    textFont (fuentehelado);
    fill (0);
    textSize (40);
    text (estados[0], 300, 100);
    textSize (25);
    text (estados[1], 320, 250);
    text (estados[2], 320, 500);
  }
  void game() {
    fondo.draw_();
    contadorTiempo = contadorTiempo + vel;
    contadorTiempo++;
    helado.dibujar();
    for (int i =0; i<1; i++) {
      abeja[0].draw_();
      if (abeja[0].colision(helado.x, helado.y, helado.ancho, helado.alto)) {
        puntos ++;
        println (puntos);
      }
      if (contadorTiempo >= 3*60 ) {
        abeja[1].draw_();
      }
      if (abeja[1].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo >= 3*60) {
        puntos ++;
        println (puntos);
      }
      if ( contadorTiempo >= 6*60 ) {
        abeja[2].draw_();
      }
      if (abeja[2].colision(helado.x, helado.y, helado.ancho, helado.alto)&& contadorTiempo >= 6*60 ) {
        puntos ++;
        println (puntos);
      }
      if ( contadorTiempo >= 9*60 ) {
        abeja[3].draw_();
      }
      if (abeja[3].colision(helado.x, helado.y, helado.ancho, helado.alto)&&contadorTiempo >= 9*60) {
        puntos ++;
        println (puntos);
      }
      if ( contadorTiempo >= 12*60 ) {
        abeja[4].draw_();
      }
      if (abeja[4].colision(helado.x, helado.y, helado.ancho, helado.alto)&&contadorTiempo >= 12*60) {
        puntos ++;
        println (puntos);
      }
      if ( contadorTiempo >= 15*60 ) {
        abeja[5].draw_();
      }
      if (abeja[5].colision(helado.x, helado.y, helado.ancho, helado.alto)&&contadorTiempo >= 15*60) {
        puntos ++;
        println (puntos);
      }
      if ( contadorTiempo >= 18*60 ) {
        abeja[6].draw_();
      }
      if (abeja[6].colision(helado.x, helado.y, helado.ancho, helado.alto)&&contadorTiempo >= 18*60) {
        puntos ++;
        println (puntos);
      }
      if ( contadorTiempo >= 21*60 ) {
        abeja[7].draw_();
      }
      if (abeja[7].colision(helado.x, helado.y, helado.ancho, helado.alto)&&contadorTiempo >= 21*60) {
        puntos ++;
        println (puntos);
      }

      //evaluo colision:

      //rect (helado.x, helado.y, helado.ancho, helado.alto);

      /*  if (abeja[0].colision(helado.x, helado.y, helado.ancho, helado.alto)) {
       puntos ++;
       println (puntos);
       }
       else if (abeja[1].colision(helado.x, helado.y, helado.ancho, helado.alto)){
       puntos ++;
       println (puntos);
       }else if (abeja[2].colision(helado.x, helado.y, helado.ancho, helado.alto)){
       puntos ++;
       println (puntos);
       }else if (abeja[3].colision(helado.x, helado.y, helado.ancho, helado.alto)){
       puntos ++;
       println (puntos);
       }else if (abeja[4].colision(helado.x, helado.y, helado.ancho, helado.alto)){
       puntos ++;
       println (puntos);
       }*/
    }
    helado.dibujar();
    fill (0);
    textSize (40);
    text (estados[3], 300, 200);
    fill (255);
    rect (87, 46, 70, 70);
    fill (0);
    textSize (50);
    text (contadorTiempo/60, 110, 95);
  }
  void ganar () {
      background (0, 200, 50);
      fill (0);
      textSize (40);
      text (estados[5], 300, 200);
    
  }
}
