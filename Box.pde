class Box{
 PVector pos;
 float r;
 float randomCol;
 
 Box(float x, float y, float z, float r_){
   
   pos = new PVector(x,y,z);
   r = r_;
   
 }
 
 ArrayList<Box> generate(){
   ArrayList<Box> boxes = new ArrayList<Box>();
   for(int x = -1; x<2; x++) {
     for(int y = -1; y<2; y++) {
       for(int z = -1; z<2; z++) {
         float newR = r/3;
         
         int sum = abs(x) + abs(y) + abs(z);
         if(sum > 1)
         {
           
           Box b = new Box(pos.x + x * newR, pos.y + y * newR, pos.z + z * newR, newR);
           
           boxes.add(b);
         }
       }
     }
   }
   return boxes;
 }
 void show(){
   //randomCol = sponge.size()*10;\
   //stroke(0,0,0,10);
   fill(100);
  // tint(256);
   pushMatrix();
   translate(pos.x,pos.y,pos.z);
   
   box(r);
   popMatrix();
 }
 
}
