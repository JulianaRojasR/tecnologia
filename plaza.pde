class Plaza{
//campos: tamaño, ubicación
//metodos: existir(?, dibujar
  PImage plaza2;
  int x,y;
  Plaza (PImage plaza2_, int x_, int y_) {
    x = x_;
    y = y_;
    plaza2= plaza2_;
  }
    void dibujar () {
 
    image (plaza2, x, y, 2000, 1500 );
   
  }
}
