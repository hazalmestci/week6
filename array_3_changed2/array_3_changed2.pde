float[] xPosArr = new float[12];

void setup() {
  size(600,600);
  noStroke();
  
  for (int i = 0; i < xPosArr.length; i++) {
    xPosArr[i] = 40 + i * 50;
  }
}

void draw() {
  background(70);
  
  for (int i = 0; i < xPosArr.length; i++) {
    xPosArr[i] += random(-i,i);
    
    fill(map(xPosArr[i], 0, width, 0, 255));
    ellipse(xPosArr[i], height/3, 160, 160);
    ellipse(xPosArr[i], height/3, 110, 110);
    ellipse(xPosArr[i], height/5, 50, 50);
    rect(xPosArr[i], height/2, 5, 40);
    rect(xPosArr[i]+10, height/2+15, 3, 30);
    rect(xPosArr[i]-10, height/2-5, 3, 30);
    rect(xPosArr[i]-20, height/2+20, 4, 25);
    rect(xPosArr[i]-26, height/2+25, 4, 25);
  }
}