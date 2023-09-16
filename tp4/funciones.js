function inicializarFrutas () {
  //Manzanas
  for ( let i=0; i<cantM; i++ ) {
    xM[i] = random( -50, width-100 );
    yM[i] = random(-700, -300);
  }
  //Bananas
  for ( let i=0; i<cantB; i++ ) {
    xB[i] = random( -50, width-100 );
    yB[i] = random( -1000, -500);
  }
}

function dibujarFrutas () {
  //Manzanas
    for (let i=0; i<cantM; i++ ) {
      push ();
      translate(xM[i], yM[i]);
      image(img[1], 0, 0, 50, 100);
      pop ();
  } //bananas
    for (let i=0; i<cantB; i++) {
      push ();
      translate(xB[i], yB[i]);
      image(img[3], 0, 0, 50, 100);
      pop ();
    }
}

function moverFrutas() { //manzanas
  for (let i=0; i<cantM; i++) {
     yM[i] += velY; 
     if(yM[i] >= random(1000, 1200) ) {
       yM[i] = -300;
       xM[i] = random( 0, width-100 );
     }
  }
  //bananas
  for (let i=0; i<cantB; i++) {
    yB[i] += velY;
    if ( yB[i] >= random(1000, 1200) ) {
      yB[i] = -300;
      xB[i] = random( 0, width-100 );
    }
  }
}

function actualizarFrutas() { //funcion que abarca dos funciones, para simplificar
  moverFrutas();
  dibujarFrutas();
}

function moverHijo() { //funcion para el movimiento de la canasta
  if (keyIsPressed) {
    if ( keyCode == LEFT_ARROW && xHijo > 0) {
      xHijo -= 4;
    }
    if ( keyCode == RIGHT_ARROW && xHijo < 520) {
      xHijo += 4;
    }
  }
}

function colisiones() { //colision de manzanas
  for (let i=0; i<cantM; i++) {
    if( dist(xHijo, yHijo, xM[i], yM[i]) < 50) {
      puntos += 1;
      yM[i] = 1000;
    }
  } //colision de bananas
  for (let i=0; i<cantB; i++) {
    if( dist(xHijo, yHijo, xB[i], yB[i]) < 50) {
      puntos -= 1;
      yB[i] = 1000;
    }
  }
}

function dibujarMarcador() { //funcion para el dibujado del marcador
  push ();
  translate(xP, yP);
  imageMode(CENTER);
  textSize(26);
  fill(255);
  image(puntaje, 0, 0, 100, 60);
  text(puntos, 0, 0);
  pop();
}

function final() { //funcion para, depende el puntaje que tengas, te lleve a uno de los dos finales
  if (puntos >= 10) {
    pantalla = 2;
  } else if (puntos <= -1) {
    pantalla = 3;
  }
}

function botones (texto1, texto2){ //funcion de cada uno de los botones que aparecen en pantalla 
  push();
  translate(width/2, 500);
  imageMode(CENTER);
  textSize(14);
  
  image(puntaje, -150, 0, 150, 60);
  text(texto1, -150, 0);
  
  image(puntaje, 150, 0, 150, 60);
  text(texto2, 150, 0);
  pop();
}

function mouseClicked() { //funcion para que cada boton que aparece en pantalla sea clickeable
   if ( pantalla == 0) {

    if (mouseX > 80 && mouseX < 220 && mouseY > 475 && mouseY < 535) {
      pantalla = 1;
      puntos = 0;
      inicializarFrutas ();
    } else if (mouseX > 380 && mouseX < 520 && mouseY > 475 && mouseY < 535) {
      pantalla = 4;
      puntos = 0;
    }
    
  } else if ( pantalla == 2 ||  pantalla == 3) {

    if (mouseX > 80 && mouseX < 220 && mouseY > 475 && mouseY < 535) {
      pantalla = 1;
      puntos = 0;
      inicializarFrutas ();
    } else if (mouseX > 380 && mouseX < 520 && mouseY > 475 && mouseY < 535) {
      pantalla = 0;
      puntos = 0;
    }
    
  } else  if ( pantalla == 4) {

    if (mouseX > 80 && mouseX < 220 && mouseY > 475 && mouseY < 535) {
      pantalla = 0;
      puntos = 0;
    } else if (mouseX > 380 && mouseX < 520 && mouseY > 475 && mouseY < 535) {
      pantalla = 1;
      puntos = 0;
      inicializarFrutas ();
    }
  }
}
