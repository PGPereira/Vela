import gab.opencv.*;

class Sombra {
  ArrayList<ArrayList<Contour>> contornos; 
  
  Sombra() {
    contornos = new ArrayList<ArrayList<Contour>>();
  }
  
  void insereFrame(ArrayList<Contour> contorno) {
    contornos.add(contorno);
  }
  
  long contagemDeFrames() {
    return contornos.size();
  }
  
  boolean exibirSombra(int frame, int x, int y, color c) {
    if(frame >= this.contagemDeFrames()) {
      return false;
    } else {
      noStroke();
      fill(c);
      for(Contour contorno :  contornos.get(frame)){
        beginShape();
        for (PVector point : contorno.getPoints()) {
          vertex(point.x + x, point.y + y);
        }
        endShape();
      }
      
      return true;
    } 
  }

  void exibirUltimaSombra(int x, int y, color c) {
    long contagem = contagemDeFrames();
    fill(c);
    if (contagem > 0) {
      for(Contour contorno : contornos.get((int)contagem - 1)){
        beginShape();
        for (PVector point : contorno.getPoints()) {
          vertex(point.x + x, point.y + y);
        }
        endShape();
      }
    }
  }
  
  boolean exibirSombraContorno(int frame, int x, int y) {
    if(frame >= this.contagemDeFrames()) {
      return false;
    } else {
      noStroke();
      
      for(Contour contorno :  contornos.get(frame)){
        fill(0);
        beginShape();
        for (PVector point : contorno.getPoints()) {
          vertex(point.x + x, point.y + y);
        }
        endShape();
      }
      
      return true;
    }
  }
}
