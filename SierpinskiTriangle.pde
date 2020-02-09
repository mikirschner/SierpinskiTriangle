int len = 100;
int x = 150;
int y = 150;
public void setup() {
  size(400,400);
}

public void draw() {
  sierpinski(x,y,len);
}
public void mousePressed() {
  len+=40;
  x-=10;
  y-=10;
}
public void sierpinski(int x, int y, int len) {
  if (len < 20) {
    triangle(x,y,x+len,y,x+len/2,y+len);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y+len/2,len/2);
  }
} 