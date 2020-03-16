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
    this.y = y;
    this.capacity = 1000;
    this.fill = 1000;
  }
  
  @Override
  public void Tick()
  {
    Draw();
    this.fill = this.capacity;
    println(fill);
  }
  
  @Override
  public void Draw()
  {
    //fill(0, ((float)((float)fill / (float)capacity)) * 128, ((float)((float)fill / (float)capacity)) * 255);
    //stroke(255);
    //strokeWeight(10);
    //rect(x - 25, y - 25, 50, 50);
    
    fill(0);
    stroke(255);
    strokeWeight(10);
    rect(this.x - 25, this.y - 25, 50, 50);
  }
}
