class WaterContainer extends WaterElement
{
  public int x;
  public int y;
  public int capacity;
  public int fill;
  
  public WaterContainer(int x,int y,int capacity,int fill)
  {
    this.x = x;
    this.y = y;
    this.capacity = capacity;
    this.fill = fill;
  }
  
  public void Tick()
  {
    Draw();
  }
  public void Draw()
  {
    color(128);
    rect(x - 25, y - 25, x + 25, y + 25);
  }
}
