class WaterPipe extends WaterElement
{
  public int c1;
  public int c2;
  public float maxtransfer;
  public int dir;
  
  public WaterPipe(int c1, int c2, float maxtransfer, int dir)
  {
    this.c1 = c1;
    this.c2 = c2;
    this.maxtransfer = maxtransfer;
    this.dir = dir;
  }
  
  public void Tick()
  {
    println("Tick!");
    Draw();
    float f1 = ((WaterContainer)(G.elements.get(c1))).GetFill();
    float f2 = ((WaterContainer)(G.elements.get(c2))).GetFill();
    int adir = 0;
    if(f1 > f2) adir = 1;
    if(f1 < f2) adir = -1;
    float transfer_size = abs(f1 - f2) / 25;
    transfer_size = min(transfer_size, maxtransfer);
    switch(adir)
    {
      case 1:
        if(dir == -1) break;
        ((WaterContainer)(G.elements.get(c1))).fill -= transfer_size;
        ((WaterContainer)(G.elements.get(c2))).fill += transfer_size;
        break;
      case -1:
        if(dir == 1) break;
        ((WaterContainer)(G.elements.get(c1))).fill += transfer_size;
        ((WaterContainer)(G.elements.get(c2))).fill -= transfer_size;
        break;
    }
  }
  
  public void Draw()
  {
    stroke(255);
    strokeWeight(10);
    line(((WaterContainer)(G.elements.get(c1))).x, ((WaterContainer)(G.elements.get(c1))).y, ((WaterContainer)(G.elements.get(c2))).x, ((WaterContainer)(G.elements.get(c2))).y);
  }
}
