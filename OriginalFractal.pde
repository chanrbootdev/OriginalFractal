void setup(){
  size(500,500);
  background(255);
  stroke(0,108,0,55);
  strokeWeight(4);
  line(250,250, 250,500);
  ellipseMode(CENTER);
  //rose(250,250,100);
  strokeWeight(5);
  stroke(255,102,204,5);
  fill(247, 135, 154, 10);
  for (int i = 0; i < 50; i++)
    rose(250,250,160);

}
void draw(){
  
}
float rot = 0;
void rose(int x, int y, int len){
  translate (250,250);
  rotate(rot);
  ellipse(x,y,len,len);
  rot = rot + 0.1;
  //rotate(-rot);
  translate(-250,-250);
  if(len > 10){
    rose(0-len/2, 0-len/2, 3*len/4); 
    rose(0-len/2, 0-len/2, len/2); //up
    rose(0-len/2, 0-len/2, len/4);
    rose(0-len/2, 0-len/2, len/8); 
    //rose(0, 0+len/2, len/8); //down
    //rose(x-len/2, y, len/2); //left
    //rose(x+len/2, y, len/2); //right
  }
}
