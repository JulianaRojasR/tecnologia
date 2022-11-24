class Helado {
  //campos: tamaño, ubicación
  //metodos: mover
  PImage helado;
  float x, y, ancho, alto;
  Helado (float x, float y, float ancho, float alto) {
    this.x = x;
    this.y = y;
    this.alto = alto;
    this.ancho = ancho;
    helado = loadImage ("helado3.png");
  }
  void dibujar () {
    x = mouseX+5;
    y = mouseY+5;
    imageMode (CENTER);
    image (helado, x, y);
  }
}
