class Abeja{
//campos: tamaño, ubicación, velocidad
//metodos: mover, rebotar
PImage abeja;
float x,y; 
float velx = 7;
float vely = 2;
float radio;
  Abeja (PImage abeja_, float x_, float y_) {
    x = x_;
    y = y_;
    abeja= abeja_;
    radio = 150;
  }
    void dibujar () {
 
    image (abeja, x, y, 300, 200 );
   mover();
   
  }
  void mover (){
  x = x+ velx;
  y = y+ vely;
}
  
  void rebotar1 (){
    if ( x>(width/3-radio)){
    x = width/3-radio;
    velx = -velx;
}else if ( x< radio){
x = radio;
velx = -velx;
}
  if ( y>(height-radio)){
    y = height-radio;
    vely = -vely;
}else if ( y< radio){
y = radio;
vely = -vely;
}
  }
    void rebotar2 (){
    if ( x>(width+100-radio)){
    x = width+100-radio;
    velx = -velx;
}else if ( x< radio+750){
x = radio+750;
velx = -velx;
}
  if ( y>(height-radio)){
    y = height-radio;
    vely = -vely;
}else if ( y< radio){
y = radio;
vely = -vely;
}
  }
}
