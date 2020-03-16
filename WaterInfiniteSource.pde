class WaterInfiniteSource extends WaterContainer
{
  public int x;
  public int y;
  public float capacity;
  public float fill;
  
  public WaterInfiniteSource(int x, int y)
  {
    super(x,y,1000,1000);
    this.x = x;
  }
  
  public void Tick()
  {
    Draw();
    this.fill = this.capacity;
  }
}
