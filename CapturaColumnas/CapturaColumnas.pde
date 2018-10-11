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
    
    //Tamaño de la imagen
    int dimension = video.width * video.height;
    
    //Carga píxeles
    video.loadPixels();
    //Modifica cada 5
    for (int i=1;i<dimension;i=i+5)
    {
        video.pixels[i] = color(255, 0, 0); 
    }
    //ACtualiza píxeles
    video.updatePixels();
  } 
image( video ,0 ,0) ; 
} 
