int length = 500;
int r = 0;
int h = 250;
int v = 250;
public void setup() {
  noStroke();
  size(1000, 1000, P3D);
  background(255); 
}

public void draw() {
  if (mousePressed == true) {
    background(255);
    translate(h, v);
    rotate(radians(r));
    length += (int)(Math.random() * 100);
    r += 1;
    sierpinski(-500, 500, length);
  } 
} 

public void sierpinski(int x, int y, int len) { 
  fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  if(len <= 20){
    triangle(x, y, x + len, y, x + len / 2, y - len);
  } else { 
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2); 
  } 
}
