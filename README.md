# Map Coordinates
The map coordinates and graph representations repositories operate on .CSV files. This reposiroty contains two exercises, one reading values from and one writing values into a .CSV file. For the sake of these exercises, the values written in the coordinates.CSV beforehand are split into two columns and repersent the X- and Y-Coordinates of geographical points, also reffered to as waypoints. 

**Difficulty level:** Beginner. 

**Programming language:** Java.

**How it works:** The programs make use of the OOP principles such that each file waypoint is an instance of the Waypoint class and multiple Waypoint objects make up a Route instance of the Route class. The coordinates reading exercise simpley loads the coordinates.CSV file and creates a Waypoint object for each line in the file, setting the appropiate X- and Y-Coordinates. The waypoints are then represented as route on the map. Finally, the legth of the route is calculated and displayed. The coordinates writing exercises on the other hand, reverses this process by allowing the user to represent some waypoints on the map to build a route themselves. The X- and Y-Coordinates are then stored under the same 2-column format into the coordinatesBlank.CSV file. This happens when the key 'q' is pressed. If the file coordinatesBlank.CSV does not exist when the user wants to save the created route, the file is created. Otherwise, the file is rewritten. 

> This exercise is written and animated using the Processing IDE. More information on inbuilt functions that have been used throughout the code can be found by accessing the [Processing Documentation](https://processing.org/reference/)

## WaypointsReading.pde
![waypointsReading](https://user-images.githubusercontent.com/60512873/122519960-ec031a80-cfc7-11eb-848b-f96ccb7744b2.png)

## WaypointsWriting.pde and coordinatesBlank.csv
https://user-images.githubusercontent.com/60512873/122520335-5451fc00-cfc8-11eb-9ee4-5e16f4159c4a.mp4

![blankcoordinates](https://user-images.githubusercontent.com/60512873/122520537-90855c80-cfc8-11eb-88d4-b4eaf21245b9.png)




