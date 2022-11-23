class Abeja {
  float alto;
  float ancho;
  float ancho2 = 150;
  float alto2 = 150;
  float x, y;
  //float radio = 150;
  //float velx = 8;
  //float vely = 3;
  PImage abeja;

  Abeja (float x, float y, float ancho, float alto) {
    this.x = x;
    this.y = y;
    this.alto = alto;
    this.ancho = ancho;
    abeja = loadImage ("abeja5.png");
    ubicacion();
  }
  void draw_ () {
    rectMode (CENTER);
    imageMode (CENTER);
    //rect(x-20, y, ancho2, alto2);
    image (abeja, x, y);
    pushMatrix();
    pushStyle();
    translate (x, y);
    rectMode (CENTER);
    fill (240, 10, 120);

    popMatrix();
    popStyle();
  }
  void ubicacion() {

    x = random (0, width);
    y = random (0, height);
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
      //x-ancho/2 < x_+ancho_/2
      //&& x+ancho/2 > x_-ancho_/2
      //&& y -alto/2 < y-alto_/2
      //&& y +alto/2 > y_+alto_/2
      //x < y+ancho
      //&& x > y
      //&& y < x+alto
      //&& y > x
      //) {
      //hay colision:
      
}
