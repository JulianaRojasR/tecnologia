void ellipsesRandom(){
    for (int i=0; i<cantidad1; i++) {
      fill(177,247,50);
      float x = random(width);
      float y = random(height);
      ellipse(x, y, 20, 20);
    }
    for (int i=0; i<cantidad2; i++) {
      fill (0, 200, 0); 
      float x = random(width);
      float y = random(height);
      ellipse(x, y, 20, 20);
    }
    for (int i=0; i<cantidad3; i++) {
      fill (0,100,0); 
      float x = random(width);
      float y = random(height);
      ellipse(x, y, 20, 20);
    }
} 
