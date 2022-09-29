//Rojas Rabassio Juliana 91575/8
//https://youtu.be/dtxmN5ZIWfQ
//hice la clase contenedora pero cuando la ejecuto pierod el movimiento, está todo comentado y explicado en el video. 
PImage plaza2, helado, abeja;
Plaza plazauwu;
Helado heladouwu;
Abeja abejauwu, abejauwu2;
//Abeja abejauwu2;
void setup (){
size (1000,600);
 imageMode (CENTER);
 plaza2 = loadImage ("plaza2.jpg");
 helado = loadImage ("helado.png");
 abeja = loadImage ("abeja.png");
 plazauwu= new Plaza (plaza2, 0,0);
 heladouwu= new Helado (helado, mouseX, mouseY);
 abejauwu = new Abeja (abeja, 100, 200);
 abejauwu2 = new Abeja (abeja, 900, 400);
}

void draw(){
plazauwu.dibujar();
heladouwu.dibujar();
abejauwu.dibujar();
abejauwu2.dibujar();
abejauwu.rebotar1();
abejauwu2.rebotar2();
}


//Zona zona; //clase contenedora
//void setup () {
//size (1000, 600);
//zona = new Zona();
//}
//void draw (){
//zona.dibujar();
//}
