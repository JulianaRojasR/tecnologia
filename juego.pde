class Juego {
  int pantalla = 1;
  //int contadorTiempo;
  String[] estados= new String [10];

  // ESTADOS

  Fondo fondo;
  Helado helado;
  Abeja[] abeja;
  Abeja abeja1;
  //int cantAbejas;
  int puntos =0;
  int contadorTiempo;
  int vel = 1;
  PImage fondo1, cartel, heladomuerto, heladoganar, heladoperder, heladovivo;
  PFont fuentehelado, letra, letra2;
  float anchoab = 100;
  float altoab = 100;
  float ancho = 100;
  float alto = 180;
  float xab = random (0, width/3);
  float yab = random (0, height/3);
  int cantAbejas = 8;
  //

  Juego() {
    heladoganar = loadImage ("heladoganar.jpg");
    heladoperder = loadImage ("heladoperder.jpg");
    heladomuerto = loadImage ("heladomuerto.png");
    heladovivo= loadImage ("heladovivo.png");
    fondo1 = loadImage ("plaza.jpg");
    cartel = loadImage ("cartel.png");
    fuentehelado = createFont ("helado.otf", 40);
    letra = createFont ("letra2.ttf", 40);
    letra2 = createFont ("letra3.ttf", 40);
    fondo = new Fondo ();
    helado = new Helado (mouseX, mouseY, ancho, alto);
    // cantAbejas = 5;
    estados[0]="¡Bienvenido a Beescape!";
    estados[1]="  Escapa de las abejas para ganar\nNo permitas que coman tu helado";
    estados[2]="Presiona la tecla 'c' para comenzar";
    estados[3]="BeeCreditos";
    estados[4]="¡Las Abejas han comido tu helado!";
    estados[5]="¡Mantuviste el helado a salvo!";
    estados[6]="                 Jugar Otra Vez\nPresiona ENTER para reiniciar ";
    estados[7] = "Idea y diseño de Juliana Rojas Rabassio";
    estados [8] = "Menciones Especiales para:";
    estados [9] = "El Peladito, El Tigre Programador, y OTP Seraphine";

    abeja = new Abeja[7];
    for (int i =0; i<6; i++) {
      abeja [0]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [1]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [2]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [3]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [4]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [5]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
      abeja [6]  = new Abeja(random (0, width), random (0, height), anchoab, altoab);
    }
  }

  void draw_() {
    background (0);
    if ( pantalla == 1) {
      musica.play();
      image (fondo1, 0+500, 0+300, 1000, 600 );
      //titulo
      textFont (letra2, 50);
      fill (255);
      text (estados[0], 205, 230);
      fill (0);
      text (estados[0], 210, 230);
      //consigna
      textFont (letra2, 25);
      text (estados[1], 280, 350);
      //empezar
      textFont (letra, 25);
      text (estados[2], 263, 470);
    } else if (pantalla == 2) {
      fondo.draw_();
      contadorTiempo = contadorTiempo + vel;
      contadorTiempo++;
      helado.dibujar();
      for (int i =0; i<1; i++) {
        //abeja0
        abeja[0].draw_();
        if (abeja[0].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo < 20*60) {
          puntos ++;
          println (puntos);
          pantalla = 4;
          musica.rewind();
          perder.play();
        } else if (!abeja[0].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo >20*60) {
          pantalla = 3;
          musica.rewind();
          ganar.play();
        }
        //abeja1
        if (contadorTiempo >= 3*60 ) {
          abeja[1].draw_();
        }
        if (abeja[1].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo < 20*60 && contadorTiempo >3*60 ) {
          puntos ++;
          println (puntos);
          pantalla = 4;
          musica.rewind();
          perder.play();
        } else if (!abeja[1].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo >20*60) {
          pantalla = 3;
          musica.rewind();
          ganar.play();
        }
        //abeja2
        if ( contadorTiempo >= 6*60 ) {
          abeja[2].draw_();
        }
        if (abeja[2].colision(helado.x, helado.y, helado.ancho, helado.alto)&& contadorTiempo < 20*60 && contadorTiempo > 6*60) {
          puntos ++;
          println (puntos);
          pantalla = 4;
          musica.rewind();
          perder.play();
        } else if (!abeja[2].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo >20*60) {
          pantalla = 3;
          musica.rewind();
          ganar.play();
        }
        //abeja3
        if ( contadorTiempo >= 9*60 ) {
          abeja[3].draw_();
        }
        if (abeja[3].colision(helado.x, helado.y, helado.ancho, helado.alto)&& contadorTiempo < 20*60 && contadorTiempo > 9*60) {
          puntos ++;
          println (puntos);
          pantalla = 4;
          musica.rewind();
          perder.play();
        } else if (!abeja[3].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo >20*60) {
          pantalla = 3;
          musica.rewind();
          ganar.play();
        }
        //abeja4
        if ( contadorTiempo >= 12*60 ) {
          abeja[4].draw_();
        }
        if (abeja[4].colision(helado.x, helado.y, helado.ancho, helado.alto)&& contadorTiempo < 20*60 && contadorTiempo > 12*60) {
          puntos ++;
          println (puntos);
          pantalla = 4;
          musica.rewind();
          perder.play();
        } else if (!abeja[4].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo >20*60) {
          pantalla = 3;
          musica.rewind();
          ganar.play();
        }
        //abeja5
        if ( contadorTiempo >= 15*60 ) {
          abeja[5].draw_();
        }
        if (abeja[5].colision(helado.x, helado.y, helado.ancho, helado.alto)&& contadorTiempo < 20*60 && contadorTiempo > 15*60) {
          puntos ++;
          println (puntos);
          pantalla = 4;
          musica.rewind();
          perder.play();
        } else if (!abeja[5].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo >20*60) {
          pantalla = 3;
          musica.rewind();
          ganar.play();
        }
        //abeja6
        if ( contadorTiempo >= 18*60 ) {
          abeja[6].draw_();
        }
        if (abeja[6].colision(helado.x, helado.y, helado.ancho, helado.alto)&& contadorTiempo < 20*60 && contadorTiempo > 18*60) {
          puntos ++;
          println (puntos);
          pantalla = 4;
          musica.rewind();
          perder.play();
        } else if (!abeja[6].colision(helado.x, helado.y, helado.ancho, helado.alto) && contadorTiempo >20*60) {
          pantalla = 3;
          musica.rewind();
          ganar.play();
        }
      }
      helado.dibujar();
      fill (#44C645);
      strokeWeight (2);
      rect (87, 46, 70, 70);
      fill (0);
      textSize (50);
      textFont (fuentehelado);
      text (contadorTiempo/60, 110, 95);
    } else if (pantalla == 3) {
      //fondo
      background (0);
      image (heladoganar, 0+500, 0+300, 1000, 600 );
      //letra arriba
      textFont (letra);
      fill (0);
      text (estados[5], 167, 80);
      fill (255);
      text (estados[5], 170, 80);
      //beecreditos
      textFont (letra2, 70);
      fill (255);
      text (estados[3], 12, 200);
      fill (0);
      text (estados[3], 15, 200);
      fill (#F53186);
      text (estados[3], 20, 200);
      //juliana
      textFont (letra2, 30);
      fill (255);
      text (estados[7], 14, 256);
      fill (0);
      text (estados[7], 17, 256);
      fill (#FF5A86);
      text (estados[7], 20, 256);
      //menciones
      textFont (letra2, 40);
      fill (255);
      text (estados[8], 15, 320);
      fill (0);
      text (estados[8], 17, 320);
      fill (#FF5A86);
      text (estados[8], 20, 320);
      //chicos
      textFont (letra2, 30);
      fill (255);
      text (estados[9], 15, 380);
      fill (0);
      text (estados[9], 17, 380);
      fill (#FF5A86);
      text (estados[9], 20, 380);
      //otra vez
      fill (255);
      textFont (letra2, 40);
      text (estados[6], 214, 480);
      fill (0);
      textFont (letra2, 40);
      text (estados[6], 217, 480);
      fill (#FF5A86);
      text (estados[6], 220, 480);
      image (heladovivo, 900, 450, 200, 300);
      musica.rewind();
    } else if (pantalla == 4) {
      //fondo
      background (0);
      image (heladoperder, 0+500, 0+300, 1000, 600 );
      //letra arriba
      textFont (letra);
      fill (0);
      text (estados[4], 167, 80);
      fill (255);
      text (estados[4], 170, 80);
      //beecreditos
      fill (0);
      textFont (letra2, 70);
      text (estados[3], 12, 200);
      fill (255);
      text (estados[3], 20, 200);
      //juliana
      fill (0);
      textFont (letra2, 30);
      text (estados[7], 15, 256);
      fill (255);
      text (estados[7], 20, 256);
      //menciones
      fill (0);
      textFont (letra2, 40);
      text (estados[8], 15, 320);
      fill (255);
      text (estados[8], 20, 320);
      //chicos
      fill (0);
      textFont (letra2, 30);
      text (estados[9], 15, 380);
      fill (255);
      text (estados[9], 20, 380);
      //otra vez
      fill (0);
      textFont (letra2, 40);
      text (estados[6], 214, 480);
      fill (255);
      textFont (letra2, 40);
      text (estados[6], 218, 480);
      fill (#FF8E9B);
      text (estados[6], 220, 480);
      musica.rewind();
      image (heladomuerto, 900, 450, 200, 300);
    }
  }

  void keyPressed_() {
    if ( pantalla == 1 && keyCode == 'c' || keyCode == 'C' ) {
      pantalla = 2;
      musica.rewind();
      musica.play();
    }
    if ( pantalla == 3 && key == ENTER) {
      pantalla = 1;
      contadorTiempo = 0;
      ganar.rewind();
    }
    if ( pantalla == 4 && key == ENTER) {
      pantalla = 1;
      contadorTiempo = 0;
      perder.rewind();
    }
  }

  void mousePressed_ () {
  }
}
