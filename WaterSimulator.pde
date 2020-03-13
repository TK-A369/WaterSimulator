void settings()
{
  size(G.window_sx,G.window_sy);
}

void setup()
{
  G.elements.add((WaterElement)new WaterContainer(100,100,1000,1000));
  G.elements.add((WaterElement)new WaterContainer(400,400,1000,0));
  G.elements.add((WaterElement)new WaterPipe(0,1,25,0));
}

void draw()
{
  background(0);
  for(int i = 0 ; i < G.elements.size() ; i ++)
  {
    G.elements.get(i).Tick();
    try
    {
      println(i + " : " + ((WaterContainer)G.elements.get(i)).fill);
    }
    catch(ClassCastException e)
    {
      
    }
  }
}
