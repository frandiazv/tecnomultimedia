void aplicacionDeImagenes () {
  img[0] = loadImage("data/principal.jpg");
  img[1] = loadImage("data/principaldos.jpg");
  img[2] = loadImage("data/principaltres.jpg");
  img[3] = loadImage("data/firstpantalla.jpg");
  img[4] = loadImage("data/bosque.jpg");
  img[5] = loadImage("data/ellobopreg.jpg");
  img[6] = loadImage("data/elloboalbosque.jpg");
  img[7] = loadImage("data/ellobocasa.jpg");
  img[8] = loadImage("data/caperucitacasa.jpg");
  img[9] = loadImage("data/elloboataca.jpg");
  img[10] = loadImage("data/terceradecision.jpg");
  img[11] = loadImage("data/excusa.jpg");
  img[12] = loadImage("data/volviendoconleñador.jpg");
  img[13] = loadImage("data/leñadorlobo.jpg");
  img[14] = loadImage("data/preguntas.jpg");
  img[15] = loadImage("data/atencionleñador.jpg");
  int randomIndex = floor(random(3)); // Genera una imagen aleatoria entre las primeras 3 nombradas cada vez q lo abras
  image(img[randomIndex], 0, 0, 600, 600);
}
