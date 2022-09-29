class Helado{
//campos: tamaño, ubicación
//metodos: mover
PImage helado;
//float tamx, tamy;
//float xpos, ypos;
//helado(float tamx_, float tamy_, float xpos_, float ypos_){
//tamy
float x,y;
  Helado (PImage helado_, float x_, float y_) {
    x = x_;
    y = y_;
    helado= helado_;
  }
    void dibujar () {
 
    image (helado, mouseX, mouseY, 200, 200 );
   
  }
}
