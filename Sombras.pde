class Sombras {
  ArrayList<Sombra> sombras;
  int sombra, frame;
  
  Sombras() {
    sombra = 0;
    frame = 0;
    sombras = new ArrayList<Sombra>();
  }
  
  long sombrasArmazenadas() {
    return sombras.size();
  }
  
  void inicializaExibicao() {
    this.frame = 0;
    this.sombra = (int)random(sombrasArmazenadas() - 1);
  }
  
  void insereSombra(Sombra sombra) {
    sombras.add(sombra);
  }
  
  void exibeSombra(int x, int y) {
    if(sombrasArmazenadas() > sombra) {
      if(sombras.get(sombra).exibirSombra(frame, x, y)) {
        frame++;
      } else {
        inicializaExibicao();
      }
    } else if (sombrasArmazenadas() > 0) {
      inicializaExibicao();
    }
  }
}
