class WaterPipe extends WaterElement
{
  public int c1;
  public int c2;
  public int maxtransfer;
  public int dir;
  
  public WaterPipe(int c1, int c2, int maxtransfer, int dir)
  {
    this.c1 = c1;
    this.c2 = c2;
    this.maxtransfer = maxtransfer;
    this.dir = dir;
  }
  
  public void Tick()
  {
    Draw();
    int f1 = ((WaterContainer)(G.elements.get(c1))).fill;
    int f2 = ((WaterContainer)(G.elements.get(c2))).fill;
    int adir = 0;
    if(f1 > f2) adir = 1;
    if(f1 < f2) adir = -1;
    int transfer_size = abs(f1 - f2) / 5;
    transfer_size = min(transfer_size, maxtransfer);
    switch(adir)
    {
      case 1:
        f1 -= transfer_size;
        f2 += transfer_size;
        break;
      case -1:
        f1 += transfer_size;
        f2 -= transfer_size;
        break;
    }
  }
  
  public void Draw()
  {
    
  }
}
