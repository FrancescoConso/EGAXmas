//EGA Christmas!
//Seguiamo gli standard EGA 640x360x16 e facciamo una cartolina di natale

//enum colori
color NERO = #000000;
color BLU = #0000AA;
color VERDE = #00AA00;
color CIANO = #00AAAA;
color ROSSO = #AA0000;
color MAGENTA = #AA00AA;
color MARRONE = #AA5500;
color GRIGIOCHIARO = #AAAAAA;
color GRIGIOSCURO = #555555;
color BLUCHIARO = #5555FF;
color VERDECHIARO = #55FF55;
color CIANOCHIARO = #55FFFF;
color ROSSOCHIARO = #FF5555;
color MAGENTACHIARO = #FF55FF;
color GIALLO = #FFFF55;
color BIANCO = #FFFFFF;

PFont fontTesto;
float incr=0;

//Definizione di varie shapes che rappresenteranno
//gli elementi del paesaggio
PShape casaCorpo=new PShape();
PShape casaLatoL=new PShape();
PShape casaLatoR=new PShape();
PShape casaMuroL=new PShape();
PShape casaMuroR=new PShape();
PShape casaTettoL=new PShape();
PShape casaTettoR=new PShape();
PShape casaCamino=new PShape();
PShape casaPorta=new PShape();
PShape casaFinestra=new PShape();

PShape chiesaCorpo=new PShape();
PShape chiesaLatoL=new PShape();
PShape chiesaLatoR=new PShape();
PShape chiesaMuroL=new PShape();
PShape chiesaMuroR=new PShape();
PShape chiesaTettoL=new PShape();
PShape chiesaTettoR=new PShape();
PShape chiesaPorta=new PShape();
PShape chiesaFinestra=new PShape();
PShape chiesaStrada=new PShape();

//metodo di disegno e istanziazione degli elementi del paesaggio
void istanziaCasaCorpo()
{
  casaCorpo = createShape(GROUP);

  casaLatoL = createShape();
  casaLatoL.beginShape();
  casaLatoL.fill(BIANCO);
  casaLatoL.noStroke();
  casaLatoL.vertex(0, 0, 0);
  casaLatoL.vertex(0, 0, height/3);
  casaLatoL.vertex(width/8, 0, height/3*2);
  casaLatoL.vertex(width/4, 0, height/3);
  casaLatoL.vertex(width/4, 0, 0);
  casaLatoL.endShape(CLOSE);

  casaLatoR = createShape();
  casaLatoR.beginShape();
  casaLatoR.fill(BIANCO);
  casaLatoR.noStroke();
  casaLatoR.vertex(0, height/8*7, 0);
  casaLatoR.vertex(0, height/8*7, height/3);
  casaLatoR.vertex(width/8, height/8*7, height/3*2);
  casaLatoR.vertex(width/4, height/8*7, height/3);
  casaLatoR.vertex(width/4, height/8*7, 0);
  casaLatoR.endShape(CLOSE);

  casaMuroL = createShape();
  casaMuroL.beginShape();
  casaMuroL.fill(BIANCO);
  casaMuroL.noStroke();
  casaMuroL.vertex(0, 0, 0);
  casaMuroL.vertex(0, 0, height/3);
  casaMuroL.vertex(0, height/8*7, height/3);
  casaMuroL.vertex(0, height/8*7, 0);
  casaMuroL.endShape(CLOSE);

  casaMuroR = createShape();
  casaMuroR.beginShape();
  casaMuroR.fill(BIANCO);
  casaMuroR.noStroke();
  casaMuroR.vertex(width/4, 0, 0);
  casaMuroR.vertex(width/4, 0, height/3);
  casaMuroR.vertex(width/4, height/8*7, height/3);
  casaMuroR.vertex(width/4, height/8*7, 0);
  casaMuroR.endShape(CLOSE);

  casaTettoL = createShape();
  casaTettoL.beginShape();
  casaTettoL.fill(ROSSO);
  casaTettoL.noStroke();
  casaTettoL.vertex(0, 0, height/3);
  casaTettoL.vertex(width/8, 0, height/3*2);
  casaTettoL.vertex(width/8, height/8*7, height/3*2);
  casaTettoL.vertex(0, height/8*7, height/3);
  casaTettoL.endShape(CLOSE);

  casaTettoR = createShape();
  casaTettoR.beginShape();
  casaTettoR.fill(ROSSO);
  casaTettoR.noStroke();
  casaTettoR.vertex(width/4, 0, height/3);
  casaTettoR.vertex(width/8, 0, height/3*2);
  casaTettoR.vertex(width/8, height/8*7, height/3*2);
  casaTettoR.vertex(width/4, height/8*7, height/3);
  casaTettoR.endShape(CLOSE);

  casaCamino = createShape(LINE, width/20, width/20, 0, width/20, width/20, height/3*2);
  casaCamino.setStrokeWeight(10);
  casaCamino.setStroke(MARRONE);

  casaPorta = createShape();
  casaPorta.beginShape();
  casaPorta.fill(MARRONE);
  casaPorta.noStroke();
  casaPorta.vertex(-1, width/20, 1);
  casaPorta.vertex(-1, width/20+50, 1);
  casaPorta.vertex(-1, width/20+50, 100);
  casaPorta.vertex(-1, width/20, 100);
  casaPorta.endShape(CLOSE);

  casaFinestra = createShape();
  casaFinestra.beginShape();
  casaFinestra.fill(BLUCHIARO);
  casaFinestra.noStroke();
  casaFinestra.vertex(-1, width/20+120, 50);
  casaFinestra.vertex(-1, width/20+170, 50);
  casaFinestra.vertex(-1, width/20+170, 100);
  casaFinestra.vertex(-1, width/20+120, 100);
  casaFinestra.endShape(CLOSE);

  casaCorpo.addChild(casaLatoL);
  casaCorpo.addChild(casaLatoR);
  casaCorpo.addChild(casaMuroL);
  casaCorpo.addChild(casaMuroR);
  casaCorpo.addChild(casaTettoL);
  casaCorpo.addChild(casaTettoR);
  casaCorpo.addChild(casaCamino);
  casaCorpo.addChild(casaPorta);
  casaCorpo.addChild(casaFinestra);
}

void istanziaChiesa()
{
  chiesaCorpo = createShape(GROUP);

  chiesaLatoL = createShape();
  chiesaLatoL.beginShape();
  chiesaLatoL.fill(GRIGIOSCURO);
  chiesaLatoL.noStroke();
  chiesaLatoL.vertex(0, 0, 0);
  chiesaLatoL.vertex(0, 0, height/3*2);
  chiesaLatoL.vertex(width/8*2, 0, height/3*3);
  chiesaLatoL.vertex(width/4*2, 0, height/3*2);
  chiesaLatoL.vertex(width/4*2, 0, 0);
  chiesaLatoL.endShape(CLOSE);

  chiesaLatoR = createShape();
  chiesaLatoR.beginShape();
  chiesaLatoR.fill(GRIGIOSCURO);
  chiesaLatoR.noStroke();
  chiesaLatoR.vertex(0, height/8*7*2, 0);
  chiesaLatoR.vertex(0, height/8*7*2, height/3*2);
  chiesaLatoR.vertex(width/8*2, height/8*7*2, height/3*3);
  chiesaLatoR.vertex(width/4*2, height/8*7*2, height/3*2);
  chiesaLatoR.vertex(width/4*2, height/8*7*2, 0);
  chiesaLatoR.endShape(CLOSE);

  chiesaMuroL = createShape();
  chiesaMuroL.beginShape();
  chiesaMuroL.fill(GRIGIOSCURO);
  chiesaMuroL.noStroke();
  chiesaMuroL.vertex(0, 0, 0);
  chiesaMuroL.vertex(0, 0, height/3*2);
  chiesaMuroL.vertex(0, height/8*7*2, height/3*2);
  chiesaMuroL.vertex(0, height/8*7*2, 0);
  chiesaMuroL.endShape(CLOSE);

  chiesaMuroR = createShape();
  chiesaMuroR.beginShape();
  chiesaMuroR.fill(GRIGIOSCURO);
  chiesaMuroR.noStroke();
  chiesaMuroR.vertex(width/4*2, 0, 0);
  chiesaMuroR.vertex(width/4*2, 0, height/3*2);
  chiesaMuroR.vertex(width/4*2, height/8*7*2, height/3*2);
  chiesaMuroR.vertex(width/4*2, height/8*7*2, 0);
  chiesaMuroR.endShape(CLOSE);

  chiesaTettoL = createShape();
  chiesaTettoL.beginShape();
  chiesaTettoL.fill(GRIGIOCHIARO);
  chiesaTettoL.noStroke();
  chiesaTettoL.vertex(0, 0, height/3*2);
  chiesaTettoL.vertex(width/8*2, 0, height/3*3);
  chiesaTettoL.vertex(width/8*2, height/8*7*2, height/3*3);
  chiesaTettoL.vertex(0, height/8*7*2, height/3*2);
  chiesaTettoL.endShape(CLOSE);

  chiesaTettoR = createShape();
  chiesaTettoR.beginShape();
  chiesaTettoR.fill(GRIGIOCHIARO);
  chiesaTettoR.noStroke();
  chiesaTettoR.vertex(width/4*2, 0, height/3*2);
  chiesaTettoR.vertex(width/8*2, 0, height/3*3);
  chiesaTettoR.vertex(width/8*2, height/8*7*2, height/3*3);
  chiesaTettoR.vertex(width/4*2, height/8*7*2, height/3*2);
  chiesaTettoR.endShape(CLOSE);

  chiesaPorta = createShape();
  chiesaPorta.beginShape();
  chiesaPorta.fill(GIALLO);
  chiesaPorta.noStroke();
  chiesaPorta.vertex(width/8, -1, 0);
  chiesaPorta.vertex(width/8, -1, height/3);
  chiesaPorta.vertex(width/8*2, -1, height/3*1.5);
  chiesaPorta.vertex(width/8*3, -1, height/3);
  chiesaPorta.vertex(width/8*3, -1, 0);
  chiesaPorta.endShape(CLOSE);

  chiesaStrada = createShape();
  chiesaStrada.beginShape();
  chiesaStrada.fill(MARRONE);
  chiesaStrada.noStroke();
  chiesaStrada.vertex(0, 0, 0);
  chiesaStrada.vertex(width/4*2, 0, 0);
  chiesaStrada.vertex(width/4*2, -width, 0);
  chiesaStrada.vertex(0, -width, 0);
  chiesaStrada.endShape(CLOSE);

  chiesaCorpo.addChild(chiesaLatoL);
  chiesaCorpo.addChild(chiesaLatoR);
  chiesaCorpo.addChild(chiesaMuroL);
  chiesaCorpo.addChild(chiesaMuroR);
  chiesaCorpo.addChild(chiesaTettoL);
  chiesaCorpo.addChild(chiesaTettoR);
  chiesaCorpo.addChild(chiesaPorta);
  chiesaCorpo.addChild(chiesaStrada);
}

void setup()
{
  size(640, 360, P3D);
  background(BLU);

  //preparo lo scenario composto per l'istanziazione
  istanziaCasaCorpo();
  istanziaChiesa();

  fontTesto = createFont("comicbd.ttf", 40);
  frameRate(5);

  

  //nessun antialias per l'effetto vecchio
  noSmooth();
}

void draw()
{
  background(BLU);

  //disegno delle stelle nello sfondo
  ellipseMode(CENTER);
  fill(GIALLO);
  noStroke();
  pushMatrix();
  translate(0, 0, -width*4);

  //qui disegno in 2d, 100 stelle in posizioni determinate
  for (int i=-50; i<50; i++)
  {
    circle(i*1500%(width*4)+width/2, -abs(i)*400%(height*4), 15);
  }
  popMatrix();

  //disegno del testo in foreground
  pushMatrix();
  translate(0, 0, width/6+10);
  stroke(MAGENTA);
  fill(BIANCO);
  shapeMode(CORNER);
  rect(160, 225, width/2, 60, 50);
  fill(MAGENTA);
  textMode(SHAPE);
  textFont(fontTesto);
  textAlign(CENTER);
  textSize(32);
  text("NATALE 2019", width/2, height/8*6-5);
  popMatrix();

  //disegno fiocchi di neve in foreground
  pushMatrix();
  translate(0, 0, width/6);
  //per ogni frame disegnamo fiocchi di neve a caso sullo schermo
  noStroke();
  fill(BIANCO);
  for (int i=0; i<50; i++)
  {
    circle(random(width), random(height), 10);
  }
  popMatrix();
  translate(width/2, height/2, -height*3/2);
  rotateX(PI/10*4);
  rotateZ(PI/2+incr);


  //Disegno del terreno
  stroke(GRIGIOCHIARO);
  fill(GRIGIOCHIARO);
  circle(0, 0, width*3);
  translate(0, 0, 10);
  stroke(BIANCO);
  fill(BIANCO);
  circle(0, 0, width*1);

  //albero di natale
  //serie di cerchi concentrici ad altezze diverse
  //colori alternati bianco verde
  pushMatrix();
  strokeWeight(5);
  fill(VERDE);
  stroke(BIANCO);
  translate(0, 0, 10);
  circle(0, 0, 32*5);
  for (int i=1; i<32; i++)
  {
    if (i%2==0) stroke(BIANCO);
    else stroke(VERDE);
    translate(0, 0, 10);
    circle(0, 0, (32-i)*5);
  }
  //palla gialla in cima
  translate(0, 0, 10);
  sphereDetail(5);
  noStroke();
  fill(GIALLO);
  sphere(20);
  popMatrix();

  //disegno degli elementi del paesaggio istanziati in precedenza
  pushMatrix();
  translate(width/3*2, height/4, 0);
  rotate(PI/6);
  shape(casaCorpo);
  popMatrix();

  pushMatrix();
  translate(width*2/4, -height, 0);
  rotate(-PI/6);
  shape(casaCorpo);
  popMatrix();

  pushMatrix();
  translate(-width/2, -height, 0);
  rotate(-PI/2);
  shape(casaCorpo);
  popMatrix();

  pushMatrix();
  translate(0, height, 0);
  rotate(PI/2);
  shape(casaCorpo);
  popMatrix();

  pushMatrix();
  translate(-width/2*3, -height/2, 0);
  rotate(PI/2);
  shape(chiesaCorpo);
  popMatrix();

  //incremento la rotazione dello scenario
  incr+=0.015;
  incr=incr%(PI*2);
  
  saveFrame("\\pics\\"+incr+".png");
}
