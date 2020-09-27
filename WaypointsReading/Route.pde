class Route {
 Waypoint [] Waypoints;
 int numWaypoints;
  
  Route(String fileName) {
    String [] fileLines = loadStrings(fileName);
    this.numWaypoints = fileLines.length;
    this.Waypoints = new Waypoint[numWaypoints];
 
    for(int counter = 0; counter < this.numWaypoints; counter++) {
      String thisWaypoint = fileLines[counter];
      
      // split the .csv file into X- and Y- Coordinates 
      int [] coords = int(split(thisWaypoint, ","));
      int thisX = coords[0];
      int thisY = coords[1];
      
      // Create a Waypoint object with this Coordinates
      this.Waypoints[counter] = new Waypoint(thisX, thisY);
    }
  }
  
  void draw() {
   for(int counter = 0; counter < this.numWaypoints; counter++) {
     if(counter < this.numWaypoints - 1) { // last-but-one waypoint
       stroke(0,0,255); // blue line
       
       // draw line from current waypoint to NEXT waypoint
       Waypoint thisWaypoint = this.Waypoints[counter];
       Waypoint nextWaypoint = this.Waypoints[counter + 1];
       
       line(thisWaypoint.x, thisWaypoint.y, nextWaypoint.x, nextWaypoint.y);
     }
     
     // draw the current waypoint
     this.Waypoints[counter].draw(); 
    }
    
    textFont(f);
    fill(0);
    text("Route length: " + calcLength(), 10, 290);
  }
  
  float calcLength() {
    // set route distance to zero
    float distance = 0;
    
    // for each waypoint..
    for(int counter = 0; counter < this.numWaypoints; counter++) {
      if(counter < this.numWaypoints - 1) { // ..up to last-but-one waypoint 
        // get the two conncting waypoints
        Waypoint thisWaypoint = this.Waypoints[counter];
        Waypoint nextWaypoint = this.Waypoints[counter + 1];
        
        // calculate distance between them, and add this to the route distance
        float hopDistance = dist(thisWaypoint.x, thisWaypoint.y, nextWaypoint.x, nextWaypoint.y);
        distance += hopDistance;
      }
    }
   return (distance); 
  }
}
