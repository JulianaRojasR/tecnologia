class Juego {
  Fondo fondo;
  Helado helado;
  Abeja[] abeja;
  Estados estados;
  String pantalla;
  //int contadorTiempo;
  int cantAbejas;
  int puntos =0;
  Juego() {
    estados = new Estados();
    pantalla = "pantalla1";
    /*fondo = new Fondo ();
     helado = new Helado ();
     cantAbejas = 5;
     abeja = new Abeja[cantAbejas];
     for (int i =0; i<cantAbejas; i++){
     abeja [i]  = new Abeja();
     }*/
  }

  void draw_() {
    background (0);
    estados.inicio();
    if ( pantalla.equals("pantalla1") ) {
      estados.inicio();
    } else if (pantalla.equals("pantalla2")) {
      estados.game();
      if (contadorTiempo >= 3*60){
        pantalla.equals("pantalla3");
      }
      
    } else if (pantalla.equals("pantalla3")) {
      estados.ganar();
    }

    /*fondo.draw_();
     for (int i =0; i<cantAbejas; i++){
     abeja [i].draw_();
     //evaluo colision:
     
     rect (helado.x,helado.y,helado.ancho, helado.alto);
     
     if (abeja[i].colision(helado.x,helado.y,helado.ancho, helado.alto)){
     puntos ++;
     println (puntos);
     }
     }
     helado.dibujar();*/
  }

  void keyPressed_() {
    if ( pantalla.equals("pantalla1") && keyCode == 'c' || keyCode == 'C' ) {
      pantalla= "pantalla2";
    }
  }

  void mousePressed_ () {
  }
}
