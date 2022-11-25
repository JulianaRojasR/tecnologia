Juego juego;

void setup () {
  size(1000, 600);
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
