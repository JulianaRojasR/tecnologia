class Estados {
  Fondo fondo;
  Helado helado;
  Abeja[] abeja;
  int cantAbejas;
  int puntos =0;
  PImage fondo1, cartel;
  PFont fuentehelado;
  float anchoab = 280;
  float ancho = 200;
  float alto = 200;
  float xab = random (0, width);
  float yab = random (0, height);

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
    cantAbejas = 5;
    abeja = new Abeja[cantAbejas];
    for (int i =0; i<cantAbejas; i++) {
      abeja [i]  = new Abeja(xab, yab, anchoab, alto);
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
    fill (255);
    helado.dibujar();
    for (int i =0; i<cantAbejas; i++) {
      abeja [i].draw_();
      //evaluo colision:

      //rect (helado.x, helado.y, helado.ancho, helado.alto);

      if (abeja[i].colision(helado.x, helado.y, helado.ancho, helado.alto)) {
        puntos ++;
        println (puntos);
      }
    }   
    fill (0);
    textSize (40);
    text (estados[3], 300, 200);
  }
}
