int[] ellipseXPos = new int[60];

void setup() {
  size(1000, 600);

  for (int i = 10; i < ellipseXPos.length; i++) {
    ellipseXPos[i] = 4;
  }
}

void draw() {
  fill(250,20);
  noStroke();
  rect(0,0,width,height);
  
  
  stroke(0);
  for (int i = 0; i < ellipseXPos.length; i++) {
    fill(map(i, 0, ellipseXPos.length, 0, 255));
    ellipse(ellipseXPos[i]*20, i * 20, 350*i/8 , 2*i/8);
    ellipse(ellipseXPos[i]*10, i * 20, 5*i/8 , 200*i/8);
    ellipse(ellipseXPos[i]*30, i * 25, 10*i/8 , 600*i/8);
    ellipse(ellipseXPos[i]*100, i * 25, 600*i/8 , 10*i/8);
  }

  for (int i = 0; i < ellipseXPos.length; i++) {
    if (ellipseXPos[i] < width) {
      ellipseXPos[i] += i/4;
    } else {
      ellipseXPos[i] = 0;
    }
  }
}