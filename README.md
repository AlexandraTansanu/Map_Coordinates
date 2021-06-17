# Map Coordinates
This reposiroty contains two exercises, one reading values from and one writing values into a .CSV file. For the sake of these exercises, the values written in the coordinates.CSV beforehand are split into two columns and repersent the X- and Y-Coordinates of geographical points, also reffered to as waypoints. 

**Difficulty level:** Beginner. 

**Programming language:** Java.

**How it works:** The programs make use of the OOP principles such that each file waypoint is an instance of the Waypoint class and multiple Waypoint objects make up a Route instance of the Route class. The coordinates reading exercise simpley loads the coordinates.CSV file and creates a Waypoint object for each line in the file, setting the appropiate X- and Y-Coordinates. The waypoints are then represented as route on the map. Finally, the legth of the route is calculated and displayed. 

> This exercise is written and animated using the Processing IDE. More information on inbuilt functions that have been used throughout the code can be found by accessing the [Processing Documentation](https://processing.org/reference/)
