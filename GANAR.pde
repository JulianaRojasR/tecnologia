boolean ganar() {
  boolean r;
  if( /*verdeo[0][0] != 0 //de prueba */
  //vo y=4
  verdeo[9][4] != 0 && verdeo[10][4] != 0 && verdeo[11][4] != 0 && verdeo[12][4] != 0 && verdeo[14][4] != 0 && verdeo[15][4] != 0 && verdeo[13][4] != 0
  //vo y=5
  && verdeo[8][5] != 0 && verdeo[16][5] != 0
  //vo y=6
  && verdeo[2][6] != 0 && verdeo[3][6] != 0 && verdeo[4][6] != 0 && verdeo[6][6] != 0 && verdeo[7][6] != 0 && verdeo[17][6] != 0 && verdeo[18][6] != 0 && verdeo[20][6] != 0 && verdeo[21][6] != 0 && verdeo[22][6] != 0
  //vo y=7
  && verdeo[2][7] != 0 && verdeo[3][7] != 0 && verdeo[7][7] != 0 && verdeo[17][7] != 0 && verdeo[21][7] != 0 && verdeo[2][7] != 0
  //vo y= 9
  && verdeo[5][9] != 0 && verdeo[19][9] != 0
  //vo y=10
  && verdeo[6][10] != 0 && verdeo[7][10] != 0 && verdeo[17][10] != 0 && verdeo[18][10] != 0
  //vc y=5
   && verdeo[9][5] != 0 && verdeo[10][5] != 0 && verdeo[11][5] != 0 && verdeo[12][5] != 0 && verdeo[13][5] != 0 && verdeo[14][5] != 0 && verdeo[15][5] != 0
  //vc y=6
   && verdeo[5][6] != 0 && verdeo[19][6] != 0 && verdeo[8][6] != 0 && verdeo[9][6] != 0  && verdeo[10][6] != 0 && verdeo[11][6] != 0 && verdeo[12][6] != 0 && verdeo[13][6] != 0  && verdeo[14][6] != 0 && verdeo[15][10] != 0 && verdeo[17][10] != 0 && verdeo[18][6] != 0
  //vc y=7
   && verdeo[4][7] != 0 && verdeo[5][7] != 0 && verdeo[6][7] != 0 && verdeo[11][7] != 0 && verdeo[12][7] != 0 && verdeo[13][7] != 0 && verdeo[18][7] != 0 && verdeo[19][10] != 0 && verdeo[20][7] != 0 
  //vc y=8
   && verdeo[5][8] != 0 && verdeo[6][8] != 0 && verdeo[7][8] != 0 && verdeo[11][8] != 0 && verdeo[12][8] != 0 && verdeo[13][8] != 0 && verdeo[17][8] != 0 && verdeo[18][8] != 0 && verdeo[19][8] != 0
  //vc y=9
    && verdeo[6][9] != 0 && verdeo[7][9] != 0 && verdeo[11][9] != 0 && verdeo[12][9] != 0 && verdeo[13][9] != 0 && verdeo[17][9] != 0 && verdeo[18][9] != 0 
  //vc y=10
  && verdeo[6][10] != 0 && verdeo[7][10] != 0 && verdeo[17][10] != 0 && verdeo[18][10] != 0 && verdeo[6][10] != 0 && verdeo[7][10] != 0 && verdeo[17][10] != 0 && verdeo[18][10] != 0 && verdeo[18][10] != 0 
  //vc y=15
    && verdeo[6][15] != 0 && verdeo[18][15] != 0
  //r y=8
    && verdeo[2][8] != 0 && verdeo[3][8] != 0   && verdeo[21][8] != 0 && verdeo[22][8] != 0
  //r y=9
  && verdeo[4][8] != 0 && verdeo[3][9] != 0   && verdeo[20][9] != 0 && verdeo[21][9] != 0
  //r y=10
  && verdeo[4][8] != 0 && verdeo[5][9] != 0   && verdeo[20][9] != 0 && verdeo[19][9] != 0
  // f y=8
  && verdeo[4][8] != 0 && verdeo[20][9] != 0  
  //n y=7
   && verdeo[8][7] != 0 && verdeo[9][7] != 0   && verdeo[10][7] != 0 && verdeo[14][7] != 0   && verdeo[15][7] != 0 && verdeo[16][7] != 0  
  //n y=8
   && verdeo[8][8] != 0 && verdeo[9][8] != 0  && verdeo[14][8] != 0 && verdeo[15][8] != 0   
  //n y=9
   && verdeo[8][9] != 0 && verdeo[9][9] != 0   && verdeo[10][9] != 0 && verdeo[14][9] != 0   && verdeo[15][9] != 0 && verdeo[16][9] != 0  
  //n y= 11 y 12
   && verdeo[5][11] != 0 && verdeo[5][12] != 0    && verdeo[19][11] != 0 && verdeo[19][12] != 0  
  //n y=14 y 15
   && verdeo[6][14] != 0 && verdeo[6][15] != 0    && verdeo[18][14] != 0 && verdeo[18][15] != 0 
  //n y= 15, 16 y 17
  && verdeo[7][15] != 0 && verdeo[7][16] != 0    && verdeo[7][17] != 0 && verdeo[17][15] != 0  && verdeo[17][16] != 0 && verdeo[17][17] != 0  
  //n y=18
  && verdeo[8][18] != 0 && verdeo[16][18] != 0
  //n y=19
  && verdeo[9][19] != 0 && verdeo[10][19] != 0 && verdeo[11][19] != 0 && verdeo[12][19] != 0 && verdeo[13][19] != 0 && verdeo[14][19] != 0 && verdeo[15][19] != 0
  //mo y=11
  && verdeo[6][11] != 0 && verdeo[7][11] != 0 && verdeo[8][11] != 0    && verdeo[9][11] != 0 && verdeo[10][11] != 0 && verdeo[11][11] != 0 && verdeo[12][11] != 0 && verdeo[13][11] != 0 && verdeo[14][11] != 0 && verdeo[15][11] != 0 && verdeo[16][11] != 0    && verdeo[18][11] != 0 && verdeo[17][11] != 0
  //mo y=12
  && verdeo[9][12] != 0    && verdeo[10][12] != 0 && verdeo[11][12] != 0 && verdeo[12][12] != 0 && verdeo[13][12] != 0    && verdeo[14][12] != 0 && verdeo[15][12] != 0 
  //mo y=13
  && verdeo[8][13] != 0 && verdeo[9][13] != 0    && verdeo[10][13] != 0 && verdeo[11][13] != 0 && verdeo[12][13] != 0 && verdeo[13][13] != 0    && verdeo[14][13] != 0 && verdeo[15][13] != 0 && verdeo[16][13] != 0
  //mo columna iz
  && verdeo[9][14] != 0 && verdeo[9][15] != 0    && verdeo[9][16] != 0 && verdeo[9][17] != 0 && verdeo[8][17] != 0
  //mo columna mid
  && verdeo[11][14] != 0 && verdeo[11][15] != 0    && verdeo[11][16] != 0 && verdeo[11][17] != 0 && verdeo[11][18] != 0
  && verdeo[12][14] != 0 && verdeo[12][15] != 0    && verdeo[12][16] != 0 && verdeo[12][17] != 0 && verdeo[12][18] != 0
  && verdeo[13][14] != 0 && verdeo[13][15] != 0    && verdeo[13][16] != 0 && verdeo[13][17] != 0 && verdeo[13][18] != 0 
  //columna der
  && verdeo[15][14] != 0 && verdeo[15][15] != 0    && verdeo[15][16] != 0 && verdeo[15][17] != 0 && verdeo[16][17] != 0 
  //mc lado iz
  && verdeo[6][12] != 0    && verdeo[7][12] != 0 && verdeo[8][12] != 0 
  && verdeo[7][13] != 0  
  && verdeo[10][14] != 0    && verdeo[7][14] != 0 && verdeo[8][14] != 0
  && verdeo[8][15] != 0 && verdeo[10][15] != 0
  && verdeo[8][16] != 0 && verdeo[10][16] != 0
  && verdeo[10][17] != 0
  && verdeo[9][18] != 0 && verdeo[10][18] != 0
  //mc lado der
  && verdeo[16][12] != 0    && verdeo[17][12] != 0 && verdeo[18][12] != 0 
  && verdeo[17][13] != 0  
  && verdeo[14][14] != 0    && verdeo[16][14] != 0 && verdeo[17][14] != 0
  && verdeo[14][15] != 0 && verdeo[16][15] != 0
  && verdeo[14][16] != 0 && verdeo[16][16] != 0
  && verdeo[14][17] != 0
  && verdeo[14][18] != 0 && verdeo[15][18] != 0
  //b y=8
  && verdeo[10][8] != 0 && verdeo[16][8] != 0
    ){
    r = true;
  }else{
    r = false;
  }
  return r;
}
