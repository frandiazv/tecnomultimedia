void eventosClicks () {
  if (!mostrarPantallaPostInicio && !mostrarPantallaCreditos && !mostrarPantallaPregunta && !mostrarFinalUno && !mostrarContinuacion && !mostrarPantallaPreguntaDos && !mostrarFinalDos && !mostrarPantallaPreguntaTres && !pantallaDeExcusa && !capYElLeñador && !volviendoConLeñador && !question && !atencionLeñador) {
    if (mouseX >= 200 && mouseX <= 400 && mouseY >= 185 && mouseY <= 235) {
      mostrarPantallaPostInicio = true;
    } else if (mouseX >= 200 && mouseX <= 400 && mouseY >= 350 && mouseY <= 400) {
      mostrarPantallaCreditos = true;
    }
  } else if (mostrarPantallaPostInicio) {
    if (mouseX >= 360 && mouseX <= 560 && mouseY >= 30 && mouseY <= 100) {
      mostrarPantallaPregunta = true;
      mostrarPantallaPostInicio = false;
    }
  } else if (mostrarPantallaCreditos && mouseX >= 160 && mouseX <= 440 && mouseY >= 300 && mouseY <= 400) {
    mostrarPantallaCreditos = false;
    mostrarPantallaPostInicio = false;
  } else if (mostrarPantallaPregunta) {
    if (mouseX >= 450 && mouseX <= 550 && mouseY >= 500 && mouseY <= 550) {
      mostrarFinalUno = true;
      mostrarPantallaPregunta = false;
    } else if (mouseX >= 50 && mouseX <= 150 && mouseY >= 500 && mouseY <= 550) {
      mostrarContinuacion = true;
      mostrarPantallaPregunta = false;
      mostrarFinalUno = false;
    }
  } else if (mostrarFinalUno && mouseX >= 220 && mouseX <= 390 && mouseY >= 500 && mouseY <= 550) {
     mostrarPantallaPostInicio = false;
     mostrarFinalUno = false;
     mostrarContinuacion = false;
  } else if (mostrarPantallaCreditos && mouseX >= 220 && mouseX <= 390 && mouseY >= 500 && mouseY <= 550) {
     mostrarPantallaCreditos = false;
     mostrarPantallaPostInicio = false;
     mostrarPantallaPregunta = false;
     mostrarFinalUno = false;
     mostrarContinuacion = false;
  } else if (mostrarContinuacion && mouseX >= 370 && mouseX <= 570 && mouseY >= 500 && mouseY <= 570) {
      mostrarPantallaPreguntaDos = true;
      mostrarContinuacion = false;
  } else if (mostrarPantallaPreguntaDos && mouseX >= 50 && mouseX <= 200 && mouseY >= 500 && mouseY <= 550) {
      mostrarFinalDos = true;
      mostrarPantallaPreguntaDos = false;
  } else if (mostrarFinalDos && mouseX >= 230 && mouseX <= 380 && mouseY >= 520 && mouseY <= 570) {
     mostrarPantallaCreditos = false;
     mostrarPantallaPostInicio = false;
     mostrarPantallaPregunta = false;
     mostrarFinalUno = false;
     mostrarContinuacion = false;
     mostrarFinalDos = false;
  } else if (mostrarPantallaPreguntaDos && mouseX >= 400 && mouseX <= 560 && mouseY >= 500 && mouseY <= 550) {
    mostrarPantallaPreguntaTres = true;
    mostrarPantallaPreguntaDos = false;
  } else if (mostrarPantallaPreguntaTres && mouseX >= 25 && mouseX <= 200 && mouseY >= 500 && mouseY <= 550) {
     mostrarPantallaPreguntaTres = false;
     pantallaDeExcusa = true;
  } else if (pantallaDeExcusa && mouseX >= 370 && mouseX <= 570 && mouseY >= 500 && mouseY <= 570) {
     capYElLeñador = true;
     pantallaDeExcusa = false;
  } else if (capYElLeñador && mouseX >= 370 && mouseX <= 570 && mouseY >= 500 && mouseY <= 570) {
    capYElLeñador = false;
    volviendoConLeñador = true;
  } else if (volviendoConLeñador && mouseX >= 50 && mouseX <= 200 && mouseY >= 500 && mouseY <= 550) {
    volviendoConLeñador = false;
  } else if (mostrarPantallaPreguntaTres && mouseX >= 360 && mouseX <= 575 && mouseY >= 500 && mouseY <= 550) {
    question = true;
    mostrarPantallaPreguntaTres = false;
  } else if (question && mouseX >= 370 && mouseX <= 570 && mouseY >= 500 && mouseY <= 570) {
    atencionLeñador = true;
    question = false;
  } else if (atencionLeñador && mouseX >= 370 && mouseX <= 570 && mouseY >= 500 && mouseY <= 570) {
    volviendoConLeñador = true;
    atencionLeñador = false;
  }
}
