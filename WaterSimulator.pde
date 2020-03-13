void settings()
{
  size(G.window_sx,G.window_sy);
}

void setup()
{
  
}

void draw()
{
  for(int i = 0 ; i < G.elements.length() ; i ++)
  {
    G.elements.get(i).Draw();
  }
}
