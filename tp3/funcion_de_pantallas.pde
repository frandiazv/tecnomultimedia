void pantallas () {
  if (!mostrarPantallaPostInicio && !mostrarPantallaCreditos && !mostrarPantallaPregunta && !mostrarFinalUno && !mostrarContinuacion && !mostrarPantallaPreguntaDos && !mostrarFinalDos && !mostrarPantallaPreguntaTres && !pantallaDeExcusa && !capYElLeñador && !volviendoConLeñador && !question && !atencionLeñador) {
    image(img[0], 0, 0, 600, 600);
    fill(255);
    rect(200, 185, 200, 50);
    fill(0);
    text("Iniciar", 245, 225);
    fill(255);
    rect(200, 350, 200, 50);
    fill(0);
    text("Creditos", 230, 390);
    fill(255, 0, 0);
    textSize(40);
    textAlign(LEFT);
    text("Caperucita Roja", 170, 130);
  } else if (mostrarPantallaPostInicio) {
    image(img[3], 0, 0, 600, 600);
    fill(255);
    rect(360, 30, 200, 70);
    fill(0);
    textSize(30);
    text("Siguiente", 460, 75);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text("La madre de Caperucita \n le pide que lleve una canasta de comida \n a su abuela \n que se encuentra enferma \n y vive en el bosque", 300, 380);
  } else if (mostrarPantallaCreditos) {
    image(img[4], 0, 0, 600, 600);
    fill(255);
    textSize(45);
    textAlign(LEFT);
    text("CREDITOS", 30, 50);
    textSize(35);
    textAlign(LEFT);
    text("- Desarrollado por Francisco Diaz Vega", 30, 100);
    text("- COMISION 3", 30, 150);
    text("- Obra hecha por Charles Perrault", 30, 200);
    fill(255);
    rect(160, 300, 280, 100);
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text("VOLVER", 300, 360);
  } else if (mostrarPantallaPregunta) {
    image(img[5], 0, 0, 600, 600);
    fill(255);
    text("Caperucita se cruza con el lobo y \n le pregunta hacia donde vas \n ¿Quieres contarle?", 300, 50);
    fill(255);
    rect(50, 500, 100, 50);
    fill(0);
    text("Si", 100, 535);
    fill(255);
    rect(450, 500, 100, 50);
    fill(0);
    text("No", 500, 535);
  } else if (mostrarFinalUno) {
    image(img[6], 0, 0, 600, 600);
    fill(255);
    text("El lobo decidio volver al bosque y \n ella siguio hacia lo de su abuela", 300, 400);
    rect(220, 500, 170, 50);
    fill(0);
    text("Inicio", 300, 535);
  } else if (mostrarContinuacion) {
    image(img[7], 0, 0, 600, 600);
    fill(255);
    text("El lobo se escabulle \n y entra en la casa de su abuela", 300, 50);
    rect(370, 500, 200, 70);
    fill(0);
    text("Siguiente", 470, 545);
  } else if (mostrarPantallaPreguntaDos) {
    image(img[8], 0, 0, 600, 600);
    fill(0);
    text("Caperucita llega a la casa \n y se encuentra con su abuela un poco rara \n ¿Que quieres hacer?", 300, 50);
    fill(255);
    rect(50, 500, 150, 50);
    fill(0);
    text("Acercarte", 125, 535);
    fill(255);
    rect(400, 500, 160, 50);
    fill(0);
    text("Distanciarte", 480, 535);
  } else if (mostrarFinalDos) {
    image(img[9], 0, 0, 600, 600);
    fill(0);
    text("No debiste acercarte, el lobo sale de la cama \n y procede a atacarte", 300, 450);
    fill(255);
    rect(230, 520, 150, 50);
    fill(0);
    text("Inicio", 300, 555);
  } else if (mostrarPantallaPreguntaTres) {
    image(img[10], 0, 0, 600, 600);
    fill(0);
    text("Evitas acercarte \n y prefieres...", 300, 50);
    fill(255);
    rect(25, 500, 175, 50);
    fill(0);
    text("Poner excusa", 115, 535);
    fill(255);
    rect(360, 500, 215, 50);
    fill(0);
    text("Hacer preguntas", 468, 535);
  } else if (pantallaDeExcusa) {
    image(img[11], 0, 0, 600, 600);
    fill(0);
    text("Caperucita sospecha de lo que esta pasando \n y pone una excusa para irse de la casa...", 300, 50);
    fill(255);
    rect(370, 500, 200, 70);
    fill(0);
    text("Siguiente", 470, 545);
  } else if (capYElLeñador) {
    image(img[12], 0, 0, 600, 600);
    fill(0);
    text("Vuelve a casa de su abuela \n acompañada del leñador", 300, 50);
    fill(255);
    rect(370, 500, 200, 70);
    fill(0);
    text("Siguiente", 470, 545);
  } else if (volviendoConLeñador) {
    image(img[13], 0, 0, 600, 600);
    fill(0);
    text("El leñador se encarga del lobo \n y las salva de algo peor", 300, 50);
    fill(255);
    rect(50, 500, 150, 50);
    fill(0);
    text("Inicio", 125, 535);
  } else if (question) {
    image(img[14], 0, 0, 600, 600);
    fill(255);
    rect(20, 30, 320, 30);
    fill(0);
    textSize(20);
    text("¿Porque tienes las orejas tan grandes?", 180, 52);
    fill(255);
    rect(345, 80, 190, 25);
    fill(0);
    text("Para escucharte mejor", 440, 100);
    fill(255);
    rect(20, 130, 320, 30);
    fill(0);
    text("¿Porque tienes los ojos tan grandes?", 180, 152);
    fill(255);
    rect(345, 180, 190, 25);
    fill(0);
    text("Para verte mejor", 440, 199);
    fill(255);
    rect(20, 330, 320, 30);
    fill(0);
    text("¿Porque tienes la boca tan grande?", 180, 352);
    fill(255);
    rect(335, 380, 215, 25);
    fill(0);
    text("Para... COMERTE MEJOR", 440, 400);
    fill(255);
    rect(370, 500, 200, 70);
    fill(0);
    textSize(30);
    text("Siguiente", 470, 545);
  } else if (atencionLeñador) {
    image(img[15], 0, 0, 600, 600);
    fill(0);
    textSize(20);
    text("El leñador es atraido por los gritos que emites \n y acude al lugar para ayudarte", 300, 50);
    fill(255);
    rect(370, 500, 200, 70);
    fill(0);
    textSize(30);
    text("Siguiente", 470, 545);
  }
}
