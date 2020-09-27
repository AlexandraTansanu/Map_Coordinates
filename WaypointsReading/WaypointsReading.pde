final int WPSIZE = 8;

Route myRoute;
PFont f;

boolean drawn;

void setup() {
 size(320,320);
 ellipseMode(CENTER);
 
 myRoute = new Route("../coordinates.csv"); // a route simply receives a file and creates/draws itself
 f = createFont("Arial", 12);
 
 drawn = false;
}

void draw() {
 if(!drawn) {
   background(220);
   
   myRoute.draw();
   
   drawn = true;
 }
}
