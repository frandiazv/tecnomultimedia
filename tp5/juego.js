class Juego { //clase de la pantalla del juego
  constructor() {
    this.puntaje = new Puntaje(); 
    this.final = new Final();
    this.lobos = [];
    this.leñador = new Leñador();
    this.img = loadImage("data/bosque.png");
    this.juegoGanado = false;
    this.limiteLobos = 10;
  }

  setup() {
    createCanvas(500, 500); //tamaño de pantalla
    this.spawnLobo(); //Spawnea un lobo al iniciar el juego
  }

  draw() {
    if (this.juegoGanado) { //Revisa si ya se cumplio el objetivo del juego
          return;
        }
    image(this.img, 0, 0, 500, 500); //fondo
    this.leñador.move();
    
    //Itera a través de todos los lobos en el array y verifica colisiones.
     for (let i = this.lobos.length - 1; i >= 0; i--) {
      this.lobos[i].checkCollision(this.leñador);
      this.lobos[i].display();
    }
    
    // Elimina los lobos inactivos después de completar el ciclo draw
    for (let i = this.lobos.length - 1; i >= 0; i--) {
      if (!this.lobos[i].active) {
        this.lobos.splice(i, 1);
      }
}
    
    this.leñador.display();
    this.puntaje.display();
    this.final.verificarGanador(this.puntaje);
    this.final.display();
    
    if (this.final.ganaste) {
      this.juegoGanado = true;
      this.leñador.paralizar();
    }
  }

  spawnLobo() {
    if (this.juegoGanado || this.lobos.length >= this.limiteLobos) {
      return; // No generar más lobos si el juego ya se ganó o si ya hay 10 lobos
    }

    let lobo = new Lobo();
    lobo.x = random(width);
    lobo.y = random(height);

    this.lobos.push(lobo);
  }
}
