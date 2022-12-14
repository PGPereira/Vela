import gab.opencv.*;

class Sombra {
  ArrayList<Contour> contornos; 
  
  Sombra() {
    contornos = new ArrayList<Contour>();
  }
  
  void insereFrame(Contour contorno) {
    contornos.add(contorno);
  }
  
  long contagemDeFrames() {
    return contornos.size();
  }
  
  boolean exibirSombra(int frame, int x, int y) {
    if(frame >= this.contagemDeFrames()) {
      return false;
    } else {
      noStroke();
      fill(255);
      beginShape();
      for (PVector point : contornos.get(frame).getPoints()) {
        vertex(point.x + x, point.y + y);
      }
      endShape();
      
      return true;
    } 
  }
  
  boolean exibirSombraContorno(int frame, int x, int y) {
    if(frame >= this.contagemDeFrames()) {
      return false;
    } else {
      noStroke();
      
      fill(255);
      beginShape();
      for (PVector point : contornos.get(frame).getPoints()) {
        vertex(point.x + x, point.y + y);
      }
      endShape();
      
      return true;
    }
  }
}
