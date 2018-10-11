PImage [ ] img=new PImage [ 6 ] ;
int frame=0;
int posy=;

void setup( ){
  size ( 600 , 400 ) ;
  img[0]=loadImage("E:/Intro Programacion con Processing Experto/Ciclo1.png");
  img[1]=loadImage("E:/Intro Programacion con Processing Experto/Ciclo2.png");
  img[2]=loadImage("E:/Intro Programacion con Processing Experto/Ciclo3.png");
  img[3]=loadImage("E:/Intro Programacion con Processing Experto/Ciclo4.png");
  img[4]=loadImage("E:/Intro Programacion con Processing Experto/Ciclo5.png");
  img[5]=loadImage("E:/Intro Programacion con Processing Experto/Ciclo6.png");
  
  frameRate (10) ;
}

void draw(){
  background(128) ;
  if (mouseY==posy)
  {
  pos=posy-1;
  }
  else{
  posy=mouseY;
  }
  image(img[frame] , mouseX+random(-5,5) , posy ) ;
  frame=frame+1;
  if (frame==6){
    frame=0;
  }
}
