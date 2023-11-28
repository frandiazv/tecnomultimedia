class Pantalla3 {
  constructor() {
    this.texto = "Pantalla 3";
    this.subtexto = "Presione Enter para comenzar el recorrido";
  }

  mostrar() {
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(32);
    text(this.texto, width / 2, height / 2 - 20);
    textSize(16);
    text(this.subtexto, width / 2, height / 2 + 20);
  }
}
