LoadRandomImage lri = new LoadRandomImage();

PImage img;
void setup() {
  size( 640, 480 );
  
  // toggle greyscale
  //lri.greyScale = true;

  //img = lri.loadRandomImage(); // load a random image
  //img = lri.loadRandomImage(200,300); // load a random image of width and height
  img = lri.loadRandomImage(200,300,"kitten"); // load random image of width and height and keyword
  //img = lri.loadRandomImage(200,300,new String[] {"paris","girl"}); // load random image of width and height of multiple keywords pick one
  //img = lri.loadRandomImage(200,300,new String[] {"paris","girl"}, "all"); // load random image of width and height of multiple keywords and match all (can be slow)
  
  // https://stackoverflow.com/questions/41069457/403-error-when-trying-to-access-an-image-url
  // "https://cdn.discordapp.com/attachments/235200958974394368/256888406645145602/output.jpg"
  // fails for loadImage
  //img = lri.loadRandomImage("https://cdn.discordapp.com/attachments/235200958974394368/256888406645145602/output.jpg"); 
}

void draw() {
  background( 255 );
  try{
    image( img, 0, 0 );
  } catch (Exception e) {
    println( e );
  }
}