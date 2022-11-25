class Abeja {
  float alto;
  float ancho;
  float x, y;
  float velx = 5;
  float vely = 5;
  float radio;
  PImage abeja;

  Abeja (float x, float y, float ancho, float alto) {
    this.x = x;
    this.y = y;
    this.alto = alto;
    this.ancho = ancho;
    radio = 70;
    abeja = loadImage ("abeja5.png");
  }
  void draw_ () {
    push();
    imageMode (CENTER);
    image (abeja, x, y);
    fill (240, 10, 120);
    pop();
    mover();
    rebotar();
  }

  //evaluar colisión:
  boolean colision(float x_, float y_, float ancho_, float alto_) {
    if (y-alto/2 < y_+alto_/2 &&
      y+alto/2 > y_-alto_/2 &&
      x-ancho/2 < x_+ancho_/2 &&
      x+ancho/2 > x_-ancho_/2) {

      return true;
    } else {
      return false;
    }
  }
  void mover () {
    x = x+ velx;
    y = y+ vely;
  }
  void rebotar () {
    if ( x>(width-radio)) {
      x = width-radio;
      velx = -velx;
    } else if ( x< radio) {
      x = radio;
      velx = -velx;
    }
    if ( y>(height-radio)) {
      y = height-radio;
      vely = -vely;
    } else if ( y< radio) {
      y = radio;
      vely = -vely;
    }
  }
  //void posicion() {
  //  imageMode (CENTER);
  //  image (abeja, x, y);
  //  fill (240, 10, 120);
  //  mover();
  //  rebotar();
  //}
}
