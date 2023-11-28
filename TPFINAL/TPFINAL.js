let pantallaActual;
let tiempoInicio;
let duracionJuego = 15 * 1000; // Duración del minijuego a partir de milisegundos (15 segundos)
let teclas = []; //array que se encarga de almacenar el estado de las teclas que son presionadas

function setup() {
  createCanvas(600, 600);
  pantallaActual = new Pantalla1(); //inicializa la primera pantalla
  tiempoInicio = millis();
}

function draw() {
  background(0);
  if (pantallaActual instanceof Minijuego) { //actualiza y muestra el videojuego, si es q se encuentra en la pantalla dwl mismo
    pantallaActual.actualizar();
    pantallaActual.mostrar();
    if (millis() - tiempoInicio > duracionJuego) { //verifica si pasaron los 15 segundos      
      pantallaActual = new Pantalla4();//si pasa el tiempo, pasa a la pantalla 4
      tiempoInicio = millis(); //reinicia el tiempo
    }
  } else {
    pantallaActual.mostrar();
  }
}

function keyPressed() {
  if (pantallaActual instanceof Minijuego) { //si estamos en el minijuego, se activa el funcionamiento de las teclas (flecha izq y der)
    if (keyCode === LEFT_ARROW) {
      teclas[LEFT_ARROW] = true;
    } else if (keyCode === RIGHT_ARROW) {
      teclas[RIGHT_ARROW] = true;
    }
  } else {
    if (keyCode === ENTER) { //si no estamos en el minijuego, maneja el cambio de pantallas la tecla ENTER
      if (pantallaActual instanceof Pantalla1) {
        pantallaActual = new Pantalla2();
      } else if (pantallaActual instanceof Pantalla2) {
        pantallaActual = new Pantalla3();
      } else if (pantallaActual instanceof Pantalla3) {
        pantallaActual = new Minijuego();
        tiempoInicio = millis();
      } else if (pantallaActual instanceof Pantalla4) {
        pantallaActual = new Pantalla1();
      }
    }
  }
}

function keyReleased() { //funciona como contrarresta del keyPressed, al soltar la tecla, se frena la elipse (seria el leñador)
  if (pantallaActual instanceof Minijuego) {
    if (keyCode === LEFT_ARROW) {
      teclas[LEFT_ARROW] = false;
    } else if (keyCode === RIGHT_ARROW) {
      teclas[RIGHT_ARROW] = false;
    }
  }
}
