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

Sombras sombras;
Sombra sombra;

void setup() {
  size(1280, 480);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
  kinect.enableUser();
  
  userList = new IntVector();
  sombra = new Sombra();
  sombras = new Sombras();
  opencv = new OpenCV(this, 640, 480);  
}

void draw() {
  background(0);
  
  kinect.update();
  userList = new IntVector();
  kinect.getUsers(userList);
  userMap = kinect.userMap();
  
  if (userList.size() > 0) {
    userID = userList.get(0);
    
    PImage noBG = getImageWithouthBackground();
    image(noBG, 0, 0);
    
    ArrayList<Contour> contours = getImageCountour(noBG);
    if(contours.size() > 0) {
      Contour contour = getBiggestContour(contours);
      //drawContour(contour, 640, 0);
      sombra.insereFrame(contour);
    } else {
      if(sombra.contagemDeFrames() > 0) {
        sombras.insereSombra(sombra);
        sombra = new Sombra();
        sombras.inicializaExibicao();
      }
    }
    
    sombras.exibeSombra(640, 0);  
  } else {
    sombras.inicializaExibicao();
  }
}

PImage getImageWithouthBackground() {
  PImage noBG = createImage(640, 480, RGB);
  
  noBG.loadPixels();
  for (int i = 0; i < userMap.length; i++) {
    if (userMap[i] != 0) {
      noBG.pixels[i] = color(255, 255, 255);
    }
  }
  noBG.updatePixels();  
  
  return noBG;
}

ArrayList<Contour> getImageCountour(PImage image) {
   opencv.loadImage(image);
   return opencv.findContours();
}

Contour getBiggestContour(ArrayList<Contour> contours) {
  float area = MIN_FLOAT;
  Contour c = contours.get(0); 
  for (Contour contour : contours) {
     if (contour.area() > area){
       c = contour;
     } 
  }
  
  return c;
}

void drawContour(Contour contour, int offsetX, int offsetY) {
  noFill();
  strokeWeight(3);
  
  stroke(0, 255, 0);
  
  stroke(255, 0, 0);
  beginShape();
  for (PVector point : contour.getPoints()) {
    vertex(point.x + offsetX, point.y + offsetY);
  }
  endShape();
}
