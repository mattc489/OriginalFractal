public void setup() {
  background(40, 30, 40);
  size(750, 750);
}

public void draw() {
  sierpinski(375, 700, 500);  
  sierpinski(250, 650, 700);  
}

public void concentric(int x1, int y1, int x2, int y2, int x3, int y3, int a) {
  stroke(233);
  fill(255, 200, 200);
  ellipse((x1 + x2) / 3, (y1 + y2) / 3, 40 + a * 10, 40 + a * 9);  
  
  if (a < 19) {
    concentric(x1 + 40, y1 - 5, x2, y2 + 33, x3 - 20, y3 - 15, a + 13);
  }
}

public void sierpinski(int x, int y, int length) {  
  stroke(300);
  fill(50, 40, 40);
  
  if (length <= 250) {
    ellipse(x + length / 6, y - length / 2, 30, 50);   
    ellipse(x + length / 3, y - length, 60, 40);       
    ellipse(x + 4 * length / 3, y - length / 2, 60, 40); 
    
    concentric(x, y, x + length / 2, y - length, x + length, y, 10);
  } else {
    sierpinski(x, y, length / 3);
    sierpinski(x + length / 3, y, length / 3);
    sierpinski(x + length / 3, y - length / 3, length / 3);
  }
}

