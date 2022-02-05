public void setup(){
  size(700, 700);
  rectMode(CENTER);
  noSmooth();
}

public void draw(){
 // background(0);
 for(int y = 0; y < height; y++){
   for(int x = 0; x < width; x++){
     float z = dist(x, y, width/2, height/2);
     stroke(200 - z);
     point(x, y);
   }
 }
  serpinski(350, 350, 180);
}

  public void  mousePressed(){
    int r = (int)(Math.random() * 150);
    int g = (int)(Math.random() * 150);
    int b = (int)(Math.random() * 150);
    fill(r, g, b);
 }
public void serpinski(float x, float y, int siz){
 rect(x, y, siz, siz);
 if(siz > 2){
   //serpinski(x + siz/4, y + siz/8, siz/2);
   serpinski(x, y, siz/2);
   serpinski(x - siz, y, siz/2);
   serpinski(x + siz, y, siz/2);
   serpinski(x, y + siz/2, siz/2);
   serpinski(x, y - siz/2, siz/2);
 }
}
