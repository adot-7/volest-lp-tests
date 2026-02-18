Output of max_ball.cpp
```bash
Polytope: 
 3 2 double
1 0 <= 0
0 1 <= 0
-1 -1 <= 1

This polytope is a simplex of dimension: 2
Maximum Inner ball: Center = (-0.292893, -0.292893), Radius = 0.292893

Polytope: 
 3 2 double
1 0 <= 0
0 1 <= 0
-0.707107 -0.707107 <= 0.707107

This polytope is a hypercube of dimension: 3
Maximum Inner ball: Center = (0, 0, 0), Radius = 1
```

Output of max_ball.r
```bash
[1] "For a 2D simplex"
An object of class "Hpolytope"
Slot "A":
     [,1] [,2]
[1,]   -1    0
[2,]    0   -1
[3,]    1    1

Slot "b":
[1] 0 0 1

Slot "volume":
[1] 0.5

Slot "type":
[1] "Hpolytope"

[1] 0.2928932 0.2928932 0.2928932

[1] "For a 3D hypercube"
An object of class "Hpolytope"
Slot "A":
     [,1] [,2] [,3]
[1,]   -1    0    0
[2,]    0   -1    0
[3,]    0    0   -1
[4,]    1    0    0
[5,]    0    1    0
[6,]    0    0    1

Slot "b":
[1] 1 1 1 1 1 1

Slot "volume":
[1] 8

Slot "type":
[1] "Hpolytope"

[1] 0 0 0 1
```

### Environment

- OS: Fedora Linux 42 
- g++: 15.2.1
- CMake: 3.31.6
- R: 4.5.2

