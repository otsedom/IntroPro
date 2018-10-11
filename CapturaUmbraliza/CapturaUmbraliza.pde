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
    //Umbraliza la parte superior de la imagen
    for (int i=1;i<dimension/2;i++)
    {
        float  suma=red(video.pixels[i])+green(video.pixels[i])+red(video.pixels[i]);
        
        //umbraliza al valor intermedio
        if (suma<255*1.5)
        {
          video.pixels[i]=color(0, 0, 0);
        }        
        else
        {
          video.pixels[i]=color(255, 255, 255);
        }
    }
    //Actualiza píxeles
    video.updatePixels();
  } 
image( video ,0 ,0) ; 
} 
