import processing.sound.*;
SoundFile ending;
PImage estrellamuerte;
PImage logo;
PImage darthvaderlego;
PImage stormtrooperlego;
PFont fuente;
PFont fuente2;
float xlogo, ylogo, txlogo, tylogo,xtext, ytext, tamtext, edt;
float estrella = random (1, 5);
float estrella2 = random (1, 8);
float velocidad = 1;
float velocidad2 = -1;
float velocidad3 = -1.5;
String texto = "Written and Directed by\n      GEoRGE LUCAS";
String texto2 = "  Produced by\n RicK McCallum";
String texto3 = "   Casting by\n Christine King";
String texto4 = "            CAST\n  HAYDEN CHRISTENSEN\n as ANAKYN SKYWALKER\n       MARK HAMILL\n   as LUKE SKYWALKER\n     HARRISoN FoRD\n       as HAN SoLo ";
String texto5 = "    Music by\n John Williams";
String texto6 = "Production Sound by\n       Derek Ball";
String texto7 = "The End";



void setup () {
  size (1000, 600);
  background (0);
  logo = loadImage ("Star_Wars_Logo.jpg");
  darthvaderlego = loadImage ("darthvaderlego.png");
  stormtrooperlego = loadImage ("stormtrooperlego.png");
  xlogo = 200;
  ylogo = 30;
  txlogo = 600;
  tylogo = 500;
  ending = new SoundFile(this, "main.mp3");
  ending.play();
  estrellamuerte = loadImage("estrella.png");

 
}
void draw () {
  background (0);
  image (logo, xlogo+frameCount, ylogo+frameCount, txlogo-frameCount*2, tylogo-frameCount*2);
  if (xlogo+frameCount ==500) {xlogo= -9000;} 
  estrella = random (1, 5);
  estrella2 = random (1, 8);

  fill (255);
  circle (150, 400, estrella);
  circle (50, 100, estrella2);
  circle (200, 187, estrella);
  circle (170, 487, estrella2);
  circle (90, 423, estrella);
  circle (900, 356, estrella);
  circle (800, 826, estrella2);
  circle (760, 450, estrella);
  circle (265, 60, estrella);
  circle (864, 45, estrella2);
  circle (374, 126, estrella);
  circle (988, 233, estrella);
  circle (598, 396, estrella2);
  circle (910, 496, estrella);
  circle (180, 400, estrella);
  circle (10, 100, estrella2);
  circle (234, 187, estrella);
  circle (689, 487, estrella);
  circle (354, 423, estrella);
  circle (873, 356, estrella2);
  circle (194, 826, estrella);
  circle (359, 450, estrella);
  circle (123, 60, estrella2);
  circle (674, 45, estrella);
  circle (564, 126, estrella);
  circle (978, 233, estrella2);
  circle (4328, 396, estrella);
  circle (178, 496, estrella);
  circle (930, 400, estrella);
  circle (250, 100, estrella2);
  circle (290, 187, estrella);
  circle (760, 487, estrella);
  circle (476, 423, estrella);
  circle (254, 356, estrella2);
  circle (790, 826, estrella);
  circle (234, 450, estrella2);
  circle (265, 60, estrella);
  circle (345, 45, estrella2);
  circle (653, 126, estrella);
  circle (867, 233, estrella2);
  circle (198, 396, estrella);
  circle (960, 496, estrella);
  //9
  circle (930, 300, estrella2);
  circle (950, 170, estrella);
  circle (990, 287, estrella);
  circle (960, 387, estrella2);
  circle (976, 523, estrella);
  circle (954, 756, estrella2);
  circle (990, 126, estrella);
  circle (934, 680, estrella2);
  circle (965, 605, estrella);
  circle (945, 45, estrella);
  circle (953, 196, estrella);
  circle (967, 543, estrella2);
  circle (998, 256, estrella);
  circle (960, 366, estrella);
  //8
  circle (830, 400, estrella2);
  circle (850, 500, estrella);
  circle (890, 587, estrella);
  circle (860, 187, estrella2);
  circle (876, 523, estrella);
  circle (854, 256, estrella);
  circle (890, 626, estrella);
  circle (834, 370, estrella2);
  circle (865, 460, estrella);
  circle (845, 145, estrella);
  circle (853, 526, estrella);
  circle (867, 433, estrella2);
  circle (898, 396, estrella);
  circle (860, 396, estrella);
  //7
  circle (730, 400, estrella2);
  circle (750, 300, estrella);
  circle (790, 587, estrella2);
  circle (760, 387, estrella);
  circle (776, 123, estrella2);
  circle (754, 256, estrella);
  circle (790, 126, estrella2);
  circle (734, 350, estrella);
  circle (765, 450, estrella2);
  circle (745, 545, estrella);
  circle (753, 526, estrella2);
  circle (767, 433, estrella);
  circle (798, 396, estrella);
  circle (760, 296, estrella2);
  //6
  circle (630, 400, estrella);
  circle (650, 10, estrella2);
  circle (690, 387, estrella);
  circle (660, 287, estrella2);
  circle (676, 623, estrella);
  circle (654, 576, estrella2);
  circle (690, 346, estrella);
  circle (634, 360, estrella);
  circle (665, 543, estrella2);
  circle (645, 325, estrella);
  circle (653, 156, estrella2);
  circle (667, 543, estrella);
  circle (698, 324, estrella);
  circle (660, 421, estrella);
  //5
  circle (530, 500, estrella);
  circle (550, 60, estrella);
  circle (590, 287, estrella2);
  circle (560, 457, estrella);
  circle (576, 233, estrella);
  circle (554, 156, estrella2);
  circle (590, 436, estrella);
  circle (534, 230, estrella);
  circle (565, 243, estrella);
  circle (545, 521, estrella);
  circle (553, 243, estrella2);
  circle (567, 215, estrella);
  circle (598, 354, estrella);
  circle (560, 300, estrella2);
  //4
  circle (430, 460, estrella);
  circle (450, 150, estrella);
  circle (490, 287, estrella);
  circle (410, 317, estrella2);
  circle (476, 543, estrella);
  circle (454, 536, estrella);
  circle (490, 352, estrella);
  circle (434, 460, estrella);
  circle (465, 332, estrella2);
  circle (445, 212, estrella);
  circle (453, 234, estrella);
  circle (467, 165, estrella2);
  circle (498, 254, estrella);
  circle (460, 420, estrella);
  //3
  circle (330, 410, estrella2);
  circle (350, 108, estrella);
  circle (390, 237, estrella);
  circle (360, 37, estrella2);
  circle (376, 323, estrella);
  circle (354, 456, estrella);
  circle (390, 326, estrella);
  circle (334, 150, estrella2);
  circle (365, 240, estrella);
  circle (345, 455, estrella);
  circle (353, 326, estrella2);
  circle (367, 233, estrella);
  circle (398, 576, estrella);
  circle (360, 526, estrella);
  //2
  circle (230, 400, estrella2);
  circle (250, 100, estrella);
  circle (290, 187, estrella);
  circle (260, 587, estrella2);
  circle (276, 323, estrella2);
  circle (254, 356, estrella);
  circle (290, 226, estrella);
  circle (234, 550, estrella2);
  circle (265, 60, estrella);
  circle (245, 45, estrella2);
  circle (253, 126, estrella);
  circle (267, 233, estrella);
  circle (298, 396, estrella2);
  circle (260, 436, estrella);
  //1
  circle (130, 30, estrella2);
  circle (150, 160, estrella2);
  circle (190, 547, estrella);
  circle (160, 237, estrella2);
  circle (176, 193, estrella2);
  circle (154, 546, estrella);
  circle (190, 326, estrella);
  circle (134, 210, estrella);
  circle (165, 160, estrella);
  circle (145, 435, estrella2);
  circle (153, 436, estrella);
  circle (167, 553, estrella);
  circle (198, 356, estrella);
  circle (160, 296, estrella2);
  //0
  circle (30, 400, estrella);
  circle (50, 100, estrella);
  circle (90, 187, estrella2);
  circle (60, 487, estrella);
  circle (76, 423, estrella);
  circle (54, 356, estrella2);
  circle (90, 826, estrella);
  circle (34, 450, estrella);
  circle (65, 60, estrella2);
  circle (45, 45, estrella);
  circle (53, 126, estrella);
  circle (67, 233, estrella);
  circle (98, 396, estrella);
  circle (60, 496, estrella2);
  
  tamtext= tamtext + velocidad3;
  fuente2 = createFont ("Starjout.ttf", 72);
  fuente = createFont ("Stjldbl1.ttf", 72);

  xtext = xtext + velocidad;
  ytext = ytext + velocidad2; 
 
textFont (fuente); 
  fill(240, 233, 29);
  
  textSize(52+tamtext/30);
  text( texto, 120+xtext/2.8, 800+ytext); 
 
  textSize(72+tamtext/30);
  text( texto2, 170+xtext/5, 1100+ytext);  

  textSize(92+tamtext/30);
  text( texto3, 130+xtext/5.8, 1400+ytext);  
  
  image (darthvaderlego, 10, 1600+ytext*1.2, 200, 250);

  image (stormtrooperlego, 790, -1250-ytext*1.2, 200, 250); 

textFont (fuente2); 
  textSize(42);
  text( texto4, 200, 1700+ytext);  
  text( texto5, 300, 2500+ytext);
  textFont (fuente);
  textSize(32);
  text( texto6, 300, 2800+ytext);
  textSize(82);
  text( texto7, 300, 3100+ytext);
  image(estrellamuerte, -2800+xtext,400,200,200);
 



}
