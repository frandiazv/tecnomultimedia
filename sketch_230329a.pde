//Imagen Phineas a retratar
PImage imagen;
void setup (){
  size(800, 400);
  imagen = loadImage("data/retrato.jpeg");
  background(209, 158, 95);
}
void draw (){
  //dimensiones de la imagen
  image(imagen, 400, 0, 400, 400);
  //fondos con lineas
  line(10, 0, 10, 400);
  line(360, 0, 360, 164);
  line(360, 190, 360, 400);
  //mas fondo, con rectangulos
  fill(184, 134, 71);
    rect(76, 251, 40, 120);
    rect(38, 363, 20, 120);
    rect(21, 203, 20, 80);
    rect(130, 200, 40, 200);
    rect(285, 68, 25, 120);
    rect(270, 0, 20, 20);
    rect(327, 0, 30, 100);
    rect(365, 0, 30, 120);
  //pelo
  fill(211, 32, 27);
    triangle(65, 100, 110, 70, 90, 120);
    triangle(65, 100, 55, 140, 90, 120);
  //ojo
  fill(255);
    ellipse(265, 140, 100, 90);
  fill(37, 48, 100);
    ellipse(300, 142, 30, 40);
  fill(255);
    circle(294, 130, 8);
  fill(255);
    triangle(190, 300, 140, 400, 225, 400);
  fill(239, 116, 50);
    rect(166, 350, 41, 25);
  //oreja y cara
  fill(246, 180, 154);
    ellipse(125, 218, 30, 30);
    triangle(190, 320, 385, 170, 60, 100);
    line(250, 275, 180, 200);
  //mas pelo
  fill(211, 32, 27);
    triangle(60, 100, 110, 30, 72, 123);
  fill(211, 32, 27);
    triangle(89, 106, 33, 143, 60, 99);
  //otro ojo
  fill(255);
    ellipse(215, 135, 100, 85);
  fill(37, 48, 100);
    ellipse(250, 140, 30, 40);
  fill(255);
    circle(242, 130, 8);
  //pecas 
  fill(188, 137, 104);
    circle(100, 126, 4);
    circle(85, 120, 4);
    circle(95, 140, 4);
}
