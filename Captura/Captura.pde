import processing.video.*; 

Capture video; 

void setup ()
{ 
  size(320,240);video = new Capture ( this ,320 ,240) ;
  
  // Lanza la captura 
  video.start() ;
  background (0) ;
} 

void draw(){ 
  if ( video.available())
  { 
    video.read() ; 
  } 
image( video ,0 ,0) ; 
} 
