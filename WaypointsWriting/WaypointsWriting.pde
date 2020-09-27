final int WPSIZE = 8;

Route myRoute;
PFont f;

void setup() {
  size(320,320);
  ellipseMode(CENTER);
 
  myRoute = new Route();
  f = createFont("Arial", 12);
}

void draw() {
   background(220);
   
   myRoute.draw();
}

void mouseClicked() { // whenever the mouse is clicked on the map, a Waypoint is drawn
 myRoute.addWaypoint(mouseX, mouseY); 
}

void keyPressed() { // saves/overwrites the route by simply receiving a file name (must be created first) 
 if(key == 'q')
   myRoute.saveRoute("../coordinatesBlank.csv");
}
