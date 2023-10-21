class Final { //clase de pantalla del final, es decir, victoria
  constructor() {
    this.ganaste = false;
    this.mensaje = "¡Ganaste! ¡Atrapaste al lobo!";
  }

  verificarGanador(puntaje) { //se encarga de verificar si ganaste viendo la cantidad de lobos que capturaste
    if (puntaje.puntos >= 10) {
      this.ganaste = true;
      juego.juegoGanado = true; // Establecer que el juego se ha ganado
    }
  }

  display() { //muestra el mensaje de victoria en el medio de la pantalla
    if (this.ganaste) {
      fill(255);
      textSize(32);
      textAlign(CENTER);
      text(this.mensaje, width / 2, height / 2);
    }
  }
}
