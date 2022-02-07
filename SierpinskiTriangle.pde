int numOfBase = 10;
public void setup(){
  size(600, 600);
}

public void draw(){
  background(25);
  stroke(255);
  sierpinski1(50, 350, 200);
  sierpinski1(200, 350, 200);
  sierpinski1(350, 350, 200);
}

public void keyPressed(){
  if(numOfBase >= 0){
    if(keyCode == UP){
      numOfBase += 10;
  }
    else if(keyCode == DOWN){
      numOfBase -= 10;
    }
  }
}
  
public void sierpinski1(float x, float y, float len){
  if(len <= numOfBase){
    fill(0, 0, 255, 100);
    triangle(x, y, x + len/2, y - len, x + len, y);
  }
  else{
    len = len/2;
    sierpinski1(x, y, len);
    sierpinski1(x + len, y, len);
    sierpinski1(x + (len/2), y - len, len);
  }
  }
/* public void sierpinski2(float x, float y, float len){
  if(len >= numOfBase){
    fill(0, 255, 0);
    triangle(x, y, x - len/2, y - len, x + len/2, y - len);
  }
  else{
    len = len/2;
    sierpinski2(x, y, len);
    sierpinski2(x + len, y, len);
    sierpinski2(x + (len/2), y - len, len);
  }
} */
