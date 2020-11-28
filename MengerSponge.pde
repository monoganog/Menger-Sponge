float a = 0;
Box b;
float c;
ArrayList<Box> sponge;

void setup(){
  colorMode(HSB);

  
  size(400,400,P3D);
  
  rotateY(45);
  b = new Box(0,0,0,200);
  sponge = new ArrayList<Box>();
  sponge.add(b);
  
  //

  
}

void mousePressed(){
  ArrayList<Box> next = new ArrayList<Box>();
  for (Box b: sponge){
    //fill(random(255));
    ArrayList<Box> newBoxes = b.generate();
    next.addAll(newBoxes);
  }
  sponge = next;
}

void draw(){
  
  if (c >= 255)  c=0;  else  c+=0.3;
  background(c, 255, 255);
  
  ortho();
  
lights();
  
  
  directionalLight(102, 102, 102, 0, 0, -1);
lightSpecular(200, 200, 200);
directionalLight(200, 200,200, 0, 1, -1);
lightSpecular(102, 102, 102);

specular(51, 51, 51);
  //background(00);
  noStroke();
  //noFill();
  
  translate(width/2, height/2);
  rotateX(a);
  println(a);
  rotateY(a);
  //rotateZ(a);
  ///rotateZ(a*0.25);
  //rotateZ(a);
  //box(200);
  for(Box b : sponge){
    
      //fill(a*20);
  //fill(random(255));
    
    b.show();
  }
  a+= 0.01;
}
