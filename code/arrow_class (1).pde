int counter=0;
boolean right=false;
class Arrow{
 public int x,y;
  public boolean fire=false,reload=false,right=false;
  Arrow(){
  x=50;
  }
  void display(){
    if(fire){ 
    image(arrow, x,y,100,20);
     x+=10;
    }
    if(reload){
      image(arrow, x,mouseY+45,100,20);
      y=mouseY+45; 
    }
  }
};
void mousePressed() {
 
  int z=arrows.size();
  if(counter<=20 && (startFlag&&x<15) || levelFlag){
   if (mouseButton==RIGHT && counter!=20 && mouseY>60){
      arrows.add(new Arrow());
      z=arrows.size();
      arrows.get(z-1).reload=true;
      right=true;
   }
   try{
  if (mouseButton == LEFT){
   arrows.get(z-1).fire=true;
   for (Arrow arr : arrows)
   arr.reload=false;
   if(right){
   counter++;
   right=false;
   }
  }}
  catch(IndexOutOfBoundsException e){}
}
}
