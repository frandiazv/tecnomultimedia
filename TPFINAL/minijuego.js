class Minijuego {
  constructor() {
    this.elipseX = width / 2;
    this.elipseY = height - 15;
    this.rectangulos = [];
    for (let i = 0; i < 10; i++) { 
      this.rectangulos.push({
        x: random(width - 20),
        y: random(-height, 0),
        velocidad: random(1, 3)
      });
    }
  }

  actualizar() {
    if (teclas[LEFT_ARROW] && this.elipseX > 15) {
      this.elipseX -= 5;
    } else if (teclas[RIGHT_ARROW] && this.elipseX < width - 15) {
      this.elipseX += 5;
    }

    for (let i = 0; i < this.rectangulos.length; i++) {
      this.rectangulos[i].y += this.rectangulos[i].velocidad;
      if (this.rectangulos[i].y > height) {
        this.rectangulos[i].y = random(-height, 0);
        this.rectangulos[i].x = random(width - 20);
        this.rectangulos[i].velocidad = random(1, 3);
      }
    }
  }

  mostrar() { //generacion de imagenes (por ahora elipse y rectangulos)
    fill(255);
    ellipse(this.elipseX, this.elipseY, 30, 30);

    for (let i = 0; i < this.rectangulos.length; i++) {
      rect(this.rectangulos[i].x, this.rectangulos[i].y, 20, 20);
    }
  }
}
