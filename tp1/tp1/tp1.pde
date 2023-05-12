//imagenes

PImage imagen1, imagen2, imagen3, imagen4;

//variables enteras

int tiempoPantalla, pantalla, x1, y1, x2, y2, x3, y3;

//sirve para reiniciar la presentacion

boolean finish;

//color de texto y boton de reinicio

color textoBoton, Boton;

//nueva fuente agregada

PFont nuevaFuente;

//void setup del proyecto

void setup(){
  size(640, 480);
  tiempoPantalla = 0;
  pantalla = 0;
  x3 = 640;
  y3 = 480;
  textAlign(CENTER, CENTER);
  imagen1 = loadImage("data/imagen1.jpg");
  imagen2 = loadImage("data/imagen2.jpg");
  imagen3 = loadImage("data/imagen3.jpg");
  imagen4 = loadImage("data/imagen4.jpg");
  textoBoton = color(0);
  Boton = color(255);
  nuevaFuente = loadFont("Cambria-Bold-32.vlw");
  textFont(nuevaFuente);
}

//void draw del proyecto

void draw(){
  background(255);
  x1 += 2;
  tiempoPantalla += 1;
  
  //primera pantalla
  
  if (tiempoPantalla <= 400) {
    image(imagen1, 0, 0, 640, 480);
    textSize(32);
    text("ELectronic Superhighway \n by Nam June Paik", 20 + x1, 240);
  }
  
  //segunda pantalla
  
  else if (tiempoPantalla <= 800){
    y1 += 2;
    image(imagen2, 0, 0, 640, 480);
    textSize(32);
    text("Publicada para todo público \n en el año 1996", 320, -100 + y1);
  }
  
  //tercera pantalla
  
  else if (tiempoPantalla <= 1200) {
    image(imagen3, 0, 0, 640, 480);
    x2 += 1;
    y2 += 1;
    textSize(40);
    text("Es una obra electrónica \n basada en el estilo del \n neodalismo", x2, y2);
    finish = true;
  }
  
  //cuarta pantalla
  
  else if(tiempoPantalla <= 1600){
    image(imagen4, 0, 0, 640, 480);
    x3 -= 1;
    y3 -= 1;
    textSize(40);
    text("Ubicada en \n Continental U.S., Alaska, Hawaii", x3, y3);
  }
  
  //ultima pantalla del boton
  
  else if(tiempoPantalla > 1600) {
    rectMode(CENTER);
    fill(Boton);
    rect(width/2, height/2 + 17, 200, 90, 5);
    textSize(40);
    textAlign(CENTER, CENTER);
    fill(textoBoton);
    text("REINICIO", width/2, height/2 + 15);   
  }
}

//void mousepressed para presionar el boton de reinicio

void mousePressed(){
  if(mouseX > 220 && mouseX < 420 && mouseY > 212 && mouseY < 302 && finish) {
    finish = false;
    tiempoPantalla = 0;
    x1 = 0;
    y1 = 0;
    x2 = 0;
    y2 = 0;
    x3 = 640;
    y3 = 480;
    fill(255);
  }
}
