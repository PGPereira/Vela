import processing.opengl.*;
import SimpleOpenNI.*;
import gab.opencv.*;

SimpleOpenNI kinect;
OpenCV opencv;

PImage userImage;
int userID;
int[] userMap;
PImage depthImage;
IntVector userList;
color corAtual, corSombra;

Sombras sombras;
Sombra sombra;

void setup() {
  fullScreen();
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
  kinect.enableUser();
  
  userList = new IntVector();
  sombra = new Sombra();
  sombras = new Sombras();
  opencv = new OpenCV(this, width, height);  
  
  corAtual = color(random(255), random(255), random(255), 128);
  corSombra = color(random(255), random(255), random(255), 128);
}

void draw() {
  background(0);
  
  kinect.update();
  userList = new IntVector();
  kinect.getUsers(userList);
  userMap = kinect.userMap();
  
  // Entender porque o userList me retorna valores mesmo sem gente em cena.
  if (userList.size() > 0) {    
    // Pega contorno da imagem com o código setado para tela cheia
    PImage noBG = getImageWithouthBackground();
    noBG.resize(width, height);
    ArrayList<Contour> contours = getImageCountour(noBG);

    if(contours.size() > 0) {
      sombra.insereFrame(contours);
      sombra.exibirUltimaSombra(0, 0, corAtual);
    } else {
      if(sombra.contagemDeFrames() > 0) {
        sombras.insereSombra(sombra);
        sombra = new Sombra();
        sombras.inicializaExibicao();
        corAtual = color(random(255), random(255), random(255), 128);
        corSombra = color(random(255), random(255), random(255), 128);
      }
    }
    
    sombras.exibeSombra(0, 0, corSombra);  
  } else {
    sombras.inicializaExibicao();
  }
}

PImage getImageWithouthBackground() {
  PImage noBG = createImage(640, 480, RGB);
  
  noBG.loadPixels();
  for (int i = 0; i < userMap.length; i++) {
    if (userMap[i] != 0) {
      noBG.pixels[i] = color(255);
    }
  }
  noBG.updatePixels();  
  
  return noBG;
}

ArrayList<Contour> getImageCountour(PImage image) {
   opencv.loadImage(image);
   return opencv.findContours();
}
