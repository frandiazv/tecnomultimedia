PImage imagen;
void setup (){
  size(800, 400);
  imagen = loadImage("data/retrato.jpeg");
  background(209, 158, 95);
}
void draw (){
  image(imagen, 400, 0, 400, 400);
  line(10, 0, 10, 400);
  line(360, 0, 360, 164);
  line(360, 190, 360, 400);
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
  fill(246, 180, 154);
    triangle(190, 320, 385, 170, 60, 100);
    line(250, 275, 180, 200);
  fill(255);
    ellipse(215, 135, 100, 85);
  fill(37, 48, 100);
    ellipse(250, 140, 30, 40);
  fill(255);
    circle(242, 130, 8);
  fill(188, 137, 104);
    circle(100, 126, 4);
    circle(85, 120, 4);
    circle(95, 140, 4);
}
