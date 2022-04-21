void setup(){
  size(800, 500);
  background(109,178,250);
  
  //cielo
  noStroke();
  fill(54,108,198,30);
  rect(0,0,800,270);
  rect(0,0,800,150);
  
  //piso
  noFill();
  stroke(150);
  strokeWeight(15);
  bezier(0,400, 400, 300, 300, 350, 800, 400);
  noStroke();
  fill(225);
  bezier(0,400, 400, 300, 300, 350, 800, 400);
  rect(0,400, 800,500); 
  fill(215);
  triangle(530, 370, 800, 403, 800,500);
  fill(190);
 triangle(0, 430, 0, 900, 220, 348);//sombra poro1
 triangle(50, 600, 500, 330, 500,600);//sombra poro2
  fill(150);
  ellipse(145,410, 95,70);
  ellipse(435, 420, 125,70);
  noFill();//borde2
  stroke(170,100);
  strokeWeight(15);
  bezier(0,400, 400, 300, 300, 350, 800, 400);
    
 //League of Legends circulos
 stroke(0);
 strokeWeight(5);
 fill(247,208,47);
 circle(80,80, 120);
 fill(34,160,152);
 circle(80,80, 100);
 noStroke();
 fill(103,232,224,50);
 circle(70,95,60);
 circle(78,85,80);
 
 //league of legends "L"
 fill(247,208,47);
 triangle(20,15, 70,15, 70,50);
 rect(40, 15, 40,120);
 triangle(20, 140, 75,140, 75, 110);
 rect(40,120, 80,20);
 stroke(206,171,44);
 strokeWeight(7);
 line(43, 33, 43, 125);
 line(25,17,43,33);
 strokeWeight(4);
 line(118,121, 118, 138);
 stroke(255,190);
 line(80, 121, 118, 121);
 line(23, 16, 77,16);
 line(23, 138, 40, 127);
 
 //poro 1
 noStroke();
fill(152,87,43);//cuerno1
 circle(200, 300, 60);
 fill(98,41,18);
 circle(204, 304, 48);
 fill(152,87,43);
 stroke(0);
 strokeWeight(1);
 circle(200,300,40);
 circle(200,300,20);
stroke(0);//patitas traseras
 strokeWeight(1);
 fill(152,87,43,200);
 triangle(90, 410, 95, 395, 105, 405);
 triangle(120, 430, 125, 415, 135, 420);
fill(255,150);//cuerpo
 noStroke();
 circle(150, 350, 150);
 circle(150,350,125);
 fill(255,300);
 circle(150,350,100);
fill(152,87,43);//cuerno2
 circle(100, 300, 60);
 fill(98,41,18);
 circle(96, 304, 48);
 fill(152,87,43);
 stroke(0);
 strokeWeight(1);
 circle(100, 300, 40);
 circle(100,300,20);
fill(237,146,167);//lengua
 rect(140, 370, 50, 50, 14, 14, 100, 100);
 strokeWeight(5);
 stroke(165,45,105);
 line(165,372, 165, 400);
 strokeWeight(10);
 stroke(152,17,85,100);
 line(146,377, 146, 410);
 stroke(0);
 strokeWeight(2);
 line(167,371, 167, 400);
fill(0);//ojitos
 strokeWeight(1);
 stroke(0);
 circle(135, 350,15);
 circle(195, 350, 15);
 fill(255);
 circle(138, 346, 5);
 circle(198, 346, 5);
fill(237,146,167, 100); //sonrojo
 noStroke();
 ellipse(120, 370, 20,10);
 ellipse(200, 370, 20, 10);
stroke(0);//patitas delanteras
 strokeWeight(1);
 fill(152,87,43);
 triangle(120, 405, 135, 410, 130, 395); 
 triangle(200, 405, 215, 410, 210, 395);
 
 //poro 2
 noStroke();
fill(152,87,43);//cuerno1
 circle(400, 300,60);
fill(98,41,18);//sombra
 circle(395,305,50);
 fill(152,87,43);
 stroke(0);
 strokeWeight(1);
 circle(400,300,40);
 circle(400,300,20);
 noStroke();
stroke(0);//patitas traseras
 strokeWeight(1);
 fill(152,87,43,200);
 triangle(495, 405, 505, 410, 510, 390);
fill(255,150);//cuerpo
 noStroke();
 circle(450, 350, 150);
 circle(450,350,125);
 fill(255,300);
 circle(450,350,100);
fill(152,87,43);//cuerno2
 circle(500, 300,60);
fill(98,41,18);//sombra
 circle(505,305,50);
 fill(152,87,43);
 stroke(0);
 strokeWeight(1);
 circle(500,300,40);
 circle(500,300,20);
stroke(0);//ojitos
 strokeWeight(7);
 line(410, 350, 425, 353);
 line(460, 353, 475, 350);
 stroke(255);
 strokeWeight(2);
 line(468,350, 475,348);
 line(418, 350, 425, 352);
 stroke(0);
 strokeWeight(1);
 line(400, 335, 415, 330);
 line(470, 330, 485, 335);
fill(142,61,23);//galleta
 noStroke();
 circle(435, 400, 40);
 fill(214,84,24);
 circle(432, 404, 30);
 stroke(0);
 strokeWeight(1);
 circle(435,400,30);
 circle(435,400,20);
 circle(435,400,10);
fill(255);//boquita
 noStroke();
 circle(425, 385, 20);
 circle(440, 385, 20);
 circle(455, 390, 20);
 circle(415, 390, 20);
fill(255);//cachete
 stroke(0);
 strokeWeight(1);
 circle(475, 390, 25);
 noStroke();
 circle(480, 380, 30);
fill(237,146,167, 100); //sonrojo
 noStroke();
 ellipse(400,370,20,10);
 ellipse(485,370,20,10);
fill(214,84,24);//migas
 circle(475,390,5);
 circle(470,393,3);
 circle(480,390,3);
 circle(415,390,5);
 circle(410,395,3);
 circle(400, 440,5);
 circle(425, 435,5);
 circle(422, 440,3);
 circle(460, 440,3);
 circle(470, 435,5);
 circle(445, 450,3);
stroke(0);//patitas delanteras
 strokeWeight(1);
 fill(152,87,43);
 triangle(395, 395, 410,405, 395,415 );
 triangle(460, 410, 470,423, 480,405 );
 
 //copos de nieve
strokeWeight(3);//copo1
 stroke(255);
 line(400, 50, 400, 100);
 line(375, 75, 425, 75);
 line(385, 60, 415, 90);
 line(385, 90, 415, 60);
 strokeWeight(12);
 stroke(255,255,255,100);
 line(400, 50, 400, 100);
 line(375, 75, 425, 75);
 line(385, 60, 415, 90);
 line(385, 90, 415, 60); 
strokeWeight(3);//copo2
 stroke(255);
 line(700, 150, 700, 200);
 line(675, 175, 725, 175);
 line(685, 160, 715, 190);
 line(685, 190, 715, 160);
 strokeWeight(12);
 stroke(255,255,255,100);
 line(700, 150, 700, 200);
 line(675, 175, 725, 175);
 line(685, 160, 715, 190);
 line(685, 190, 715, 160);
strokeWeight(3);//copo3
 stroke(255);
 line(500, 200, 500, 250);
 line(475, 225, 525, 225);
 line(485, 210, 515, 240);
 line(485, 240, 515, 210);
 strokeWeight(12);
 stroke(255,255,255,100);
 line(500, 200, 500, 250);
 line(475, 225, 525, 225);
 line(485, 210, 515, 240);
 line(485, 240, 515, 210);
strokeWeight(3);//copo4
 stroke(255);
 line(200, 150, 200, 200);
 line(175, 175, 225, 175);
 line(185, 160, 215, 190);
 line(185, 190, 215, 160);
 strokeWeight(12);
 stroke(255,255,255,100);
 line(200, 150, 200, 200);
 line(175, 175, 225, 175);
 line(185, 160, 215, 190);
 line(185, 190, 215, 160);
strokeWeight(3);//copo5
 stroke(255);
 line(280, 120, 280, 150);
 line(265, 135, 295, 135);
 line(270, 125, 290, 145);
 line(270, 145, 290, 125);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(280, 120, 280, 150);
 line(265, 135, 295, 135);
 line(270, 125, 290, 145);
 line(270, 145, 290, 125);
strokeWeight(3);//copo6
 stroke(255);
 line(580, 150, 580, 180);
 line(565, 165, 595, 165);
 line(570, 155, 590, 175);
 line(570, 175, 590, 155);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(580, 150, 580, 180);
 line(565, 165, 595, 165);
 line(570, 155, 590, 175);
 line(570, 175, 590, 155);
strokeWeight(3);//copo7
 stroke(255);
 line(630, 320, 630, 350);
 line(615, 335, 645, 335);
 line(620, 325, 640, 345);
 line(620, 345, 640, 325);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(630, 320, 630, 350);
 line(615, 335, 645, 335);
 line(620, 325, 640, 345);
 line(620, 345, 640, 325);
strokeWeight(3);//copo8
 stroke(255);
 line(30, 340, 30, 370);
 line(15, 355, 45, 355);
 line(20, 345, 40, 365);
 line(20, 365, 40, 345);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(30, 340, 30, 370);
 line(15, 355, 45, 355);
 line(20, 345, 40, 365);
 line(20, 365, 40, 345);
strokeWeight(3);//copo9
 stroke(255);
 line(60, 200, 60, 230);
 line(45, 215, 75, 215);
 line(50, 205, 70, 225);
 line(50, 225, 70, 205);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(60, 200, 60, 230);
 line(45, 215, 75, 215);
 line(50, 205, 70, 225);
 line(50, 225, 70, 205);
strokeWeight(3);//copo10
 stroke(255);
 line(280, 290, 280, 320);
 line(265, 305, 295, 305);
 line(270, 295, 290, 315);
 line(270, 315, 290, 295);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(280, 290, 280, 320);
 line(265, 305, 295, 305);
 line(270, 295, 290, 315);
 line(270, 315, 290, 295);
strokeWeight(3);//copo11
 stroke(255);
 line(410, 180, 410, 210);
 line(395, 195, 425, 195);
 line(400, 185, 420, 205);
 line(400, 205, 420, 185);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(410, 180, 410, 210);
 line(395, 195, 425, 195);
 line(400, 185, 420, 205);
 line(400, 205, 420, 185);
strokeWeight(3);//copo12
 stroke(255);
 line(190, 20, 190, 50);
 line(175, 35, 205, 35);
 line(180, 25, 200, 45);
 line(180, 45, 200, 25);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(190, 20, 190, 50);
 line(175, 35, 205, 35);
 line(180, 25, 200, 45);
 line(180, 45, 200, 25);
strokeWeight(3);//copo13
 stroke(255);
 line(750, 20, 750, 50);
 line(735, 35, 765, 35);
 line(740, 25, 760, 45);
 line(740, 45, 760, 25);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(750, 20, 750, 50);
 line(735, 35, 765, 35);
 line(740, 25, 760, 45);
 line(740, 45, 760, 25);
strokeWeight(3);//copo14
 stroke(255);
 line(500, 100, 500, 130);
 line(485, 115, 515, 115);
 line(490, 105, 510, 125);
 line(490, 125, 510, 105);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(500, 100, 500, 130);
 line(485, 115, 515, 115);
 line(490, 105, 510, 125);
 line(490, 125, 510, 105);
strokeWeight(3);//copo15
 stroke(255);
 line(620, 30, 620, 80);
 line(595, 55, 645, 55);
 line(605, 40, 635, 70);
 line(605, 70, 635, 40);
 strokeWeight(12);
 stroke(255,255,255,100);
 line(620, 30, 620, 80);
 line(595, 55, 645, 55);
 line(605, 40, 635, 70);
 line(605, 70, 635, 40);
strokeWeight(3);//copo16
 stroke(255);
 line(750, 260, 750, 290);
 line(735, 275, 765, 275);
 line(740, 265, 760, 285);
 line(740, 285, 760, 265);
 strokeWeight(12);
 stroke(255,255,255,80);
 line(750, 260, 750, 290);
 line(735, 275, 765, 275);
 line(740, 265, 760, 285);
 line(740, 285, 760, 265);
 
}
