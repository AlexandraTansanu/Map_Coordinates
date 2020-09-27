class Route {
  // an ArrayList is needed since we don't know in advance how many Waypoints are going to created
  ArrayList <Waypoint> Waypoints; 
  int numWaypoints;
 
  Route() {
    this.numWaypoints = 0;
    this.Waypoints = new ArrayList<Waypoint>();
  }
  
  void draw() {
   for(int counter = 0; counter < this.numWaypoints; counter++) {
    if(counter < this.numWaypoints - 1) { // last-but-one waypoint
      stroke(0,0,255); // blue line
      
      // draw line from current waypoint to NEXT waypoint
      Waypoint thisWaypoint = this.Waypoints.get(counter);
      Waypoint nextWaypoint = this.Waypoints.get(counter + 1);
      
      line(thisWaypoint.x, thisWaypoint.y, nextWaypoint.x, nextWaypoint.y);
    }
    
    // draw the current waypoint 
    this.Waypoints.get(counter).draw();
   }
   
   textFont(f);
   fill(0);
   text("Route length: "+ calcLength(), 10, 290);
  }
  
  float calcLength()
  {
    // set route distance to zero
    float distance = 0;
    
    // for each waypoint...
    for (int counter = 0; counter < this.numWaypoints; counter++) {
      if (counter < this.numWaypoints - 1) { // ...up to last-but-one waypoint
        // get the two connecting waypoints
        Waypoint thisWaypoint = this.Waypoints.get(counter);
        Waypoint nextWaypoint = this.Waypoints.get(counter + 1);
        
        // calculate distance between them, and add this to the route distance
        float hopDistance = dist(thisWaypoint.x, thisWaypoint.y, nextWaypoint.x, nextWaypoint.y);
        distance += hopDistance;
      }
    }
    
    return(distance);
  }
  
  void addWaypoint(int x, int y) {
   Waypoint newWaypoint = new Waypoint(x,y);
   this.Waypoints.add(newWaypoint);
   
   this.numWaypoints += 1;
  }
  
  void saveRoute(String filename) {
    String [] stringVersion = new String[this.numWaypoints];
    
    for(int counter = 0; counter < this.numWaypoints; counter++) {
      Waypoint thisWaypoint = this.Waypoints.get(counter);
      
      // get this Waypoint's X- and Y- Coordinates so that the values can be added to the .csv file
      stringVersion[counter] = thisWaypoint.x + "," + thisWaypoint.y;
    }
    
    saveStrings(filename, stringVersion);
  }
}
