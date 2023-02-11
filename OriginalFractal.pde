void setup(){
size(800,800);
background(255);
}
void draw(){
  background(0);
  bloom(mouseX, mouseY, mouseX);
}
void bloom(int x, int y, int rad){
  fill((int)(mouseX/5), 255, (int)(mouseX/4));
  if(rad <= 20)
    ellipse(x, y, rad, rad);
   else{
      bloom(x, y - rad/2, rad/3);
      bloom(x, y + rad/2, rad/3);
      bloom(x+rad/2, y, rad/3);
      bloom(x-rad/2, y, rad/3);
      bloom(x+rad, y - rad/2, rad/2);
      bloom(x-rad, y - rad/2, rad/2);
      bloom(x+rad, y + rad/2, rad/2);
      bloom(x-rad, y + rad/2, rad/2);
   }
}
