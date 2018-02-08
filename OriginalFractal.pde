public void setup()
{
  size(500,500);
  noFill();
}
public void draw()
{
  background(0);
  fractal(250,250, 400);
}

public void fractal(int x, int y, int len)
{
  if(len<=40)
  {
    point(x-50, y-50);
    point(x+50, y-50);
    ellipse(x, y, len, 1.5*len);
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

  }
  else
  {
    fractal(x-10, y, len/2);
    fractal(x+10, y, len/2);
    fractal(x, y-10, len/2);
    fractal(x, y+10, len/2);
    fractal(x-100, y, len/2);
    fractal(x+100, y, len/2);
    fractal(x, y-100, len/2);
    fractal(x, y+100, len/2);
    
  }
  
}