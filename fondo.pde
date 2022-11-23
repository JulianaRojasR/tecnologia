class Fondo{
//campos: tamaño, ubicación
//metodos: existir(?, dibujar
  PImage plazawa;
  int x,y;
  Fondo () {
    plazawa = loadImage ("plazawa.jpg");
    imageMode (CENTER);
  }
    void draw_ () {
 
    image (plazawa, x, y, 2000, 1500 );
   
  }
}
