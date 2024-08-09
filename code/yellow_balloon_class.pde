class YellowBallon{
  public float x,y;
  boolean normalBalloon=true;
  YellowBallon(float x,float y){
    this.x=x;
    this.y=y;
  }
  void display(){
    if(normalBalloon){
    image(yellowBallon,x,y,50,60);
    y-=random(10);
    if(y<=40){
      y=height;
    }
  }
    else{
      image(yellowBallon2,x,y,50,60);
      y++;
    }
  }
 
};
