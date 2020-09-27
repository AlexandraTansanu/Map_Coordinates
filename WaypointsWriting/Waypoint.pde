class Waypoint {
  int x;
  int y;
 
  Waypoint(int Xcoord, int Ycoord) {
    this.x = Xcoord;
    this.y = Ycoord;
  }
  
  void draw() {
   fill(255);
   stroke(255,0,0);
   ellipse(this.x, this.y, WPSIZE, WPSIZE);
  }
}
