void settings()
{
  size(G.window_sx,G.window_sy);
}

void setup()
{
  G.elements.add((WaterElement)new WaterContainer(100,100,1000,500));
  G.elements.add((WaterElement)new WaterContainer(400,400,1000,0));
  G.elements.add((WaterElement)new WaterPipe(0,1,4,0));
}

void draw()
{
  background(0);
  for(int i = 0 ; i < G.elements.size() ; i ++)
  {
    G.elements.get(i).Tick();
  }
}
