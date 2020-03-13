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
}
