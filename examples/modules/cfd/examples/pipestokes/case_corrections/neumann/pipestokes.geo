h=0.05;
myhext=h;
cl__1 = 1;
length=5;
height=1;
Point(1) = {0, 0, 0, myhext};
Point(2) = {length, 0, 0, myhext};
Point(3) = {length, height, 0, myhext};
Point(4) = {0, height, 0, myhext};
Line(1) = {2, 3};
Line(2) = {3, 4};
Line(3) = {4, 1};
Line(4) = {1, 2};
Line Loop(6) = {2, 3, 4, 1};
Plane Surface(6) = {6};
Physical Line("outlet") = {1};
Physical Line("wall1") = {2};
Physical Line("inlet") = {3};
Physical Line("wall2") = {4};
Physical Surface("Fluid") = {6};
