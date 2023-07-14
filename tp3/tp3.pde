// Enlace del video: https://youtu.be/elEWFotgfjA
// Francisco Diaz Vega 92824/1 COMISION 3
PImage[] img = new PImage[16]; // Imagenes
boolean mostrarPantallaPostInicio = false; // Pantalla principal
boolean mostrarPantallaCreditos = false; // Pantalla de creditos
boolean mostrarPantallaPregunta = false; // Pantalla del lobo con pregunta
boolean mostrarFinalUno = false; // Final 1 al presionar el NO
boolean mostrarContinuacion = false; // Al elegir el SI se activa esta variable
boolean mostrarPantallaPreguntaDos = false; // Segunda toma de decisiones
boolean mostrarFinalDos = false; // Final 2 al presionar ACERCARTE
boolean mostrarPantallaPreguntaTres = false; // Tercera toma de decisiones
boolean pantallaDeExcusa = false; // Al presionar poner excusa
boolean capYElLeñador = false; //
boolean volviendoConLeñador = false;
boolean question = false;
boolean atencionLeñador = false;

void setup() {
  size(600, 600);
  aplicacionDeImagenes();
}

void draw() {
  pantallas(); // Funcion propia ejecutada en otra pestaña
}

void mousePressed() {
  eventosClicks();
}
