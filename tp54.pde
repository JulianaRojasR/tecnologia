//Rojas Rabassio Juliana 91575/8
//Comisión 2, Profes Matías Jauregui Lorda y Tobías Albirosa
//Link a Youtube: https://youtu.be/1qLFuFL9BVI
//PD: Ya eliminé la pestaña de estados que era inutil y el video capaz tiene el audio un poco bajo, pero se escucha

//guía de preguntas:
//tiene variables globales? no
//no usa parametros en ningun mentodo? sí usa
//no se comunican los objetos? sí se comunican
//no hay arreglos de objetos? sí hay
//no hay colisión ni otra relación? sí hay
//no tiene sonidos de eventos? si tiene, musica de fondo y sonidos para ganar y perder
//no utiliza lógica de estados? sí utiliza
//las colisiones funcionan? sí
//se puede reiniciar? sí
//el audio se reinicia? sí

import ddf.minim.*;
Minim minim;
AudioPlayer musica;
AudioPlayer perder;
AudioPlayer ganar;
Juego juego;

void setup () {
  size(1000, 600);
  minim = new Minim(this);
  musica = minim.loadFile("musica.wav");
  perder = minim.loadFile("perder.wav");  
  ganar = minim.loadFile("ganar.wav");
  juego = new Juego();
}

void draw() {
  juego.draw_();
}

void mousePressed() {
  juego.mousePressed_();
}
void keyPressed() {
  juego.keyPressed_();
}
