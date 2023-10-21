//Francisco Diaz Vega 92824/1
//Enlace del video: https://youtu.be/dtbEEZWBjoU

//Variables 
let leñador;
let lobos = [];
let puntaje;
let juego;

function setup() {
  createCanvas(500, 500);
  juego = new Juego();
  juego.setup();
}

function draw() {
  juego.draw();
}
