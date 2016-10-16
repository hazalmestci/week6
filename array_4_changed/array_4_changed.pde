int NUMBALLS = 170;

float[] ballX = new float[NUMBALLS];
float[] ballY = new float[NUMBALLS];
float[] dx = new float[NUMBALLS];
float[] dy = new float[NUMBALLS];

void setup() {
  size(800,800);
  
  noStroke();
  textAlign(CENTER, CENTER);
  
  for (int i = 0; i < NUMBALLS; i++) {
    ballX[i] = width/2;
    ballY[i] = height/2;
    dx[i] = random(-10,10);
    dy[i] = random(-10,10);
    
    //ballX[i] = 0;
    //ballY[i] = map(i,0,NUMBALLS,0,height);
    //dx[i] = map(i,0,NUMBALLS,0,5);
    //dy[i] = 0;
  }
}

void draw() {
  background(50);
  
  for (int i = 0; i < NUMBALLS; i++) {
   // fill(map(i,0,NUMBALLS,50,255));
    
noStroke();
colorMode(HSB, 255);
color c = color(0, 126, 255);
fill(c);
    ellipse(ballX[i], ballY[i], i+10, i+10);
    float value = saturation(c);  // Sets 'value' to 126
fill(value);
 ellipse(ballX[i]+10, ballY[i]+10, i+10, i+10);
    fill(10);
    text(".", ballX[i], ballY[i]);
    ballX[i] += dx[i];
    ballY[i] += dy[i];
    

//rect(15, 20, 35, 60);
    
    
    if (ballX[i] > width || ballX[i] < 0) {
      ballX[i] -= dx[i];
      dx[i] = -dx[i];
    }
    
    if (ballY[i] > height || ballY[i] < 0) {
      ballY[i] -= dy[i];
      dy[i] = -dy[i];
    }
    
  }
}