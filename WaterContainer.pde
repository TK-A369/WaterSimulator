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
    fill(0, ((float)((float)fill / (float)capacity)) * 128, ((float)((float)fill / (float)capacity)) * 255);
    stroke(255);
    strokeWeight(10);
    rect(x - 25, y - 25, 50, 50);
  }
}
