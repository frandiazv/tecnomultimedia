//Francisco Diaz Vega 92824/1 
//Perdon la calidad profe, no se como hacer para subirsela, espero que sirva igual sino intento otra cosa!
//Enlace del video: https://youtu.be/wmRU2iS26Hg

//VARIABLES

let pantalla; //variable para cada pantalla

let img=[], xM=[], yM=[], xB=[], yB=[], velY; // todas las variables son de ambas frutas

let puntaje, xP, yP, puntos; //marcador de arriba a la derecha

let cantM, cantB; //cantidad de cada fruta

let xHijo, yHijo; //variables de la canasta del hijo

let nuevaFuente; //fuente implementada

function preload() {
  nuevaFuente = loadFont("data/EBGaramond-Italic-VariableFont_wght.ttf"); //cargando la fuente
}

function setup() { //configuracion general de la pantalla
  createCanvas (600, 600); 
  textAlign(CENTER, CENTER);
  pantalla = 0;
  textFont(nuevaFuente);
  fill(50, 50, 100);
  
  //configuracion de las frutas
  
  cantM = random(4, 6);
  cantB = random(4, 8);
  velY = 10;
  
  //cargado de imagenes
  
  img[1] = loadImage("data/manzana.png");
  puntaje = loadImage("data/puntaje.png");
  img[0] = loadImage("data/fondo.png");
  img[2] = loadImage("data/canasta.png");
  img[3] = loadImage("data/banana.png");
  
  //posicion inicial de la canasta
  
  xHijo = width/2;
  yHijo = 400;
  
  //funcion para comenzar con el generado de frutas
  
  inicializarFrutas ();
  
  //marcador
  
  xP = 520;
  yP = 50;
  puntos = 0;
}


function draw() { //pantalla principal
  if (pantalla == 0) {
    image(img[0], 0, 0, 600, 600);
    textSize(32);
    
    image(img[1], 270, 50, 80, 100);
    fill(255);
    text("\n ¡Ayuda a tu padre a conseguir 10 manzanas!", width/2, height*0.35);
    text("\n \n Utiliza ← y → para moverte por la zona", width/2, height*0.45);
    text("\n \n \n  No le vayas a llevar bananas, \n ¡que se enfadara mucho!", width/2, height*0.55);
    
    botones ("JUGAR", "CREDITOS");
  } else if (pantalla == 1) { //pantalla de juego
    image(img[0], 0, 0, 600, 600);
    
    push ();
    translate(xHijo, yHijo);
    image(img[2], 0, 0, 80, 170);
    pop ();
    
    actualizarFrutas ();
    
    moverHijo ();
    
    colisiones ();
    
    final ();
    
    dibujarMarcador ();
  } else if (pantalla == 2) { //pantalla de victoria
      image(img[0], 0, 0, 600, 600);
      textSize(32);
      text("¡PERFECTO!", width/2, height*0.4);
      textSize(16);
      text("¡TU PADRE ESTA MUY CONTENTO!", width/2, height*0.5);   
      botones ("REINICIAR", "SALIR");
  } else if ( pantalla == 3 ) { //pantalla de derrota
      image(img[0], 0, 0, 600, 600);
      textSize(32);
      text("\n \n TU PADRE SE ENFADO Y TE CASTIGO \n POR NO TRAERLE MANZANAS", width/2, height*0.4);
      botones("REINICIAR", "SALIR");
  } else if (pantalla == 4) { //pantalla de creditos
      image(img[0], 0, 0, 600, 600);
      textSize(32);
      text("CREDITOS", width/2, height*0.4);
      fill(255);
      textSize(24);
      text("\n Creado y desarollado por \n Francisco Diaz Vega", width/2, height*0.5);
      botones("MENU", "JUGAR");
  }
}
