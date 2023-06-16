// enlace al video: https://youtu.be/wcFtR1YZlyg
//Francisco Diaz Vega, 92824/1, Comision 3, TP NRO 2

PImage ilusion; // variable para imagen
float angulo = 0; // variable de un numero flotante para darle un valor al angulo
float rotacionV = 0.01; // variable de un numero flotante para la velocidad de rotacion del angulo
float inicialRotacionV; // variable para luego retornar la rotacion al valor inicial

void setup() {
  size(800, 400);
  ilusion = loadImage("data/ilusion.jpeg");
  inicialRotacionV = rotacionV;  // Guardar el valor inicial de rotacionV
}

void draw() {
  background(255);
  image(ilusion, 0, 0, 400, 400);
  rectMode(CENTER);
  translate(600, 200);  // Translado el centro de los cuadrados al costado derecho de la pantalla
  rotate(angulo);  // Rotar el angulo de los cuadrados sobre su eje
  noStroke(); // Saco bordes para que haya más espacio entre cuadrados
  
  // Dibujar los cuadrados
  for (int i = 30; i >= 1; i--) {
    if (i % 2 == 0) {
      fill(0);
    } else {
      fill(255);
    }
    drawSquare(i);  // Llamar a la función para que se encargue de dibujar los cuadrados
  }
  
  angulo += rotacionV;  // Incrementar el ángulo de rotación
}

void drawSquare(int index) { // toma un parámetro "index" y dibuja un cuadrado utilizando el tamaño calculado dentro de la función, en el bucle for, se llama a esta función pasando el valor actual de i como argumento. 
  float size = index * 10;
  rect(0, 0, size, size);
}

void keyPressed() {
  if (key == ' ') {
    angulo = 0;  // Restablecer el ángulo a 0 una vez presionado el espacio
    rotacionV = inicialRotacionV;  // Restablecer rotacionV al valor inicial
  }
}

void mouseMoved() {
  rotacionV = map(mouseX, 0, width, -0.1, 0.1);  // Mapear la velocidad de rotación según la posición del mouse para que la ilusion gire
}
