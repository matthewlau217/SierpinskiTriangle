public void setup()
{
  size(1000, 1000);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else {
    triangle(x, y, x + len/2, y, x + len/4, y - len/2);
    triangle(x + len/2, y, x + len, y, x + len/4, y - len/2);
  }
}
