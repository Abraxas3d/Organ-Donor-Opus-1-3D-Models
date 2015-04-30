$fn = 50;
//cos of 45 degrees is adj/hyp
//therefore hyp = 28*cos(45)

total_arc = 270;
number_of_legs = 6;
spacing = 270/(number_of_legs - 1);

inner_pipe_height = 30;
inner_pipe_radius = 21;
inner_toe_rest_radius = 19;

outer_pipe_height = 18;
outer_pipe_radius = 26;
outer_toe_rest_radius = 24;

toe_rest_width = 4;
toe_rest_depth = 1.5;
incline = 30;

//windchest
translate([0,0,5*25.4]) rotate (a = 45, v = [0,0,1]) cube(size = [36*25.4, 24*25.4,11*25.4], center = true);


difference()
{
//outer toe rests
#translate([0,0,outer_pipe_height*25.4])cylinder(h = toe_rest_depth*25.4, r=(outer_toe_rest_radius + toe_rest_width)*25.4);
#translate([0,0,outer_pipe_height*25.4])cylinder(h = toe_rest_depth*25.4, r=outer_toe_rest_radius*25.4);
//cutting cube
#translate([0,-50*25.4,0]) cube(size = [50*25.4,50*25.4,100*25.4]);
}

difference()
{
//inner toe rests
#translate([0,0,inner_pipe_height*25.4])cylinder(h = toe_rest_depth*25.4, r=(inner_toe_rest_radius + toe_rest_width)*25.4);
#translate([0,0,inner_pipe_height*25.4])cylinder(h = toe_rest_depth*25.4, r=inner_toe_rest_radius*25.4);
//cutting cube
#translate([0,-50*25.4,0]) cube(size = [50*25.4,50*25.4,100*25.4]);
}


//pipes for outer toe rest
translate([outer_pipe_radius*25.4*cos(0*spacing), outer_pipe_radius*25.4*sin(0*spacing), 0]) cylinder(h = outer_pipe_height*25.4, r=1*25.4);
translate([outer_pipe_radius*25.4*cos(1*spacing), outer_pipe_radius*25.4*sin(1*spacing), 0]) cylinder(h = outer_pipe_height*25.4, r=1*25.4);
translate([outer_pipe_radius*25.4*cos(2*spacing), outer_pipe_radius*25.4*sin(2*spacing), 0]) cylinder(h = outer_pipe_height*25.4, r=1*25.4);
translate([outer_pipe_radius*25.4*cos(3*spacing), outer_pipe_radius*25.4*sin(3*spacing), 0]) cylinder(h = outer_pipe_height*25.4, r=1*25.4);
translate([outer_pipe_radius*25.4*cos(4*spacing), outer_pipe_radius*25.4*sin(4*spacing), 0]) cylinder(h = outer_pipe_height*25.4, r=1*25.4);
translate([outer_pipe_radius*25.4*cos(5*spacing), outer_pipe_radius*25.4*sin(5*spacing), 0]) cylinder(h = outer_pipe_height*25.4, r=1*25.4);


//pipes for inner toe rest
translate([inner_pipe_radius*25.4*cos(0*spacing), inner_pipe_radius*25.4*sin(0*spacing), 0]) cylinder(h = inner_pipe_height*25.4, r=1*25.4);
translate([inner_pipe_radius*25.4*cos(1*spacing), inner_pipe_radius*25.4*sin(1*spacing), 0]) cylinder(h = inner_pipe_height*25.4, r=1*25.4);
translate([inner_pipe_radius*25.4*cos(2*spacing), inner_pipe_radius*25.4*sin(2*spacing), 0]) cylinder(h = inner_pipe_height*25.4, r=1*25.4);
translate([inner_pipe_radius*25.4*cos(3*spacing), inner_pipe_radius*25.4*sin(3*spacing), 0]) cylinder(h = inner_pipe_height*25.4, r=1*25.4);
translate([inner_pipe_radius*25.4*cos(4*spacing), inner_pipe_radius*25.4*sin(4*spacing), 0]) cylinder(h = inner_pipe_height*25.4, r=1*25.4);
translate([inner_pipe_radius*25.4*cos(5*spacing), inner_pipe_radius*25.4*sin(5*spacing), 0]) cylinder(h = inner_pipe_height*25.4, r=1*25.4);



incline = 30;


rotate(a = -135, v = [0,0,1]){



translate([0,0,(tan(incline))*(25.4*24)])
difference()
{
//base of foot rest
#cylinder(h = 25.4*1, r1 = 25.4*23, r2 = 25.4*23);
//take out keyhole and center
#rotate(a=45, v=[0,0,1]){
cube(size=[25.4*48, 25.4*48, 25.4*1]);
}
#cylinder(h = 25.4*1, r1 = 25.4*19, r2 = 25.4*19);
}
translate([0,0,21*25.4])
rotate(a=(270 + 0 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 753.618 ,  52.8828 , 36.9824 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 0 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 718.82 ,  51.7906 , 35.5092 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 0 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 686.308 ,  50.7492 , 34.0868 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 0 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 655.574 ,  49.7332 , 32.7406 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 3 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 626.364 ,  48.768 , 31.4198 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 3 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 599.186 ,  47.8282 , 30.1752 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 3 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 573.278 ,  46.9392 , 28.956 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 3 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 548.894 ,  46.0756 , 27.813 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 6 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 526.034 ,  45.2374 , 26.6954 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 6 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 504.444 ,  44.45 , 25.6286 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 6 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 484.124 ,  43.688 , 24.6126 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 6 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 464.82 ,  42.9514 , 23.622 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 9 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 446.786 ,  42.2656 , 22.6822 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 9 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 429.768 ,  41.5798 , 21.7678 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 9 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 413.512 ,  40.9448 , 20.9042 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 9 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 398.526 ,  40.3098 , 20.066 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 12 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 384.048 ,  39.7256 , 19.2786 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 12 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 370.586 ,  39.1414 , 18.4912 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 12 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 357.886 ,  38.608 , 17.7546 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 12 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 345.948 ,  38.0746 , 17.0434 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 15 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 334.772 ,  37.5666 , 16.3576 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 15 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 324.104 ,  37.084 , 15.7226 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 15 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 314.198 ,  36.6014 , 15.0876 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 15 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 304.546 ,  36.1696 , 14.478 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 18 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 295.656 ,  35.7378 , 13.8938 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 18 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 287.274 ,  35.3314 , 13.3604 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 18 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 279.4 ,  34.925 , 12.827 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 18 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 272.034 ,  34.544 , 12.2936 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 21 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 264.922 ,  34.1884 , 11.811 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 21 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 258.318 ,  33.8328 , 11.3284 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 21 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 252.222 ,  33.5026 , 10.8966 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 21 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 246.38 ,  33.1724 , 10.4394 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 24 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 240.792 ,  32.8676 , 10.033 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 24 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 235.712 ,  32.5628 , 9.6266 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 24 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 230.632 ,  32.2834 , 9.2456 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 24 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 226.06 ,  32.004 , 8.89 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 27 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 221.742 ,  31.7246 , 8.5344 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 27 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 732.79 ,  63.2714 , 48.0314 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 27 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 699.008 ,  61.7474 , 46.101 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 27 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 667.258 ,  60.2996 , 44.2722 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 30 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 637.032 ,  58.9026 , 42.4942 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 30 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 608.838 ,  57.5818 , 40.7924 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 30 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 582.168 ,  56.2864 , 39.1668 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 30 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 557.022 ,  55.0418 , 37.592 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 33 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 533.4 ,  53.8734 , 36.0934 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 33 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 511.048 ,  52.7304 , 34.6456 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 33 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 489.966 ,  51.6382 , 33.274 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 33 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 470.154 ,  50.5968 , 31.9532 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 36 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 451.612 ,  49.5808 , 30.6578 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 36 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 434.086 ,  48.6156 , 29.4386 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 36 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 417.576 ,  47.7012 , 28.2702 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 36 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 401.828 ,  46.7868 , 27.1272 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 39 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 387.096 ,  45.9486 , 26.0604 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 39 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 373.38 ,  45.1358 , 25.019 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 39 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 360.426 ,  44.323 , 24.003 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 39 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 347.98 ,  43.5864 , 23.0632 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 42 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 336.55 ,  42.8498 , 22.1234 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 42 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 325.628 ,  42.164 , 21.2598 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 42 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 315.214 ,  41.4782 , 20.3962 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 42 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 305.562 ,  40.8432 , 19.5834 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 45 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 296.418 ,  40.2336 , 18.796 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 45 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 288.036 ,  39.624 , 18.0594 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 45 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 279.908 ,  39.0652 , 17.3228 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 45 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 272.288 ,  38.5318 , 16.637 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 48 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 265.176 ,  37.9984 , 15.9766 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 48 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 258.318 ,  37.4904 , 15.3416 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 48 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 251.968 ,  37.0078 , 14.732 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 48 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 246.126 ,  36.5506 , 14.1224 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 51 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 240.538 ,  36.0934 , 13.5636 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 51 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 235.204 ,  35.6616 , 13.0302 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 51 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 230.124 ,  35.2552 , 12.4968 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 51 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 225.552 ,  34.8742 , 12.0142 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 54 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 221.234 ,  34.4932 , 11.5316 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 54 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 216.916 ,  34.1376 , 11.0744 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 54 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 213.106 ,  33.782 , 10.6172 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 54 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 209.296 ,  33.4518 , 10.2108 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 57 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 205.994 ,  33.1216 , 9.8044 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 57 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 202.692 ,  32.8168 , 9.398 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 57 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 199.644 ,  32.512 , 9.017 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 57 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 196.85 ,  32.2326 , 8.6614 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 60 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 194.056 ,  31.9532 , 8.3058 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 60 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 191.516 ,  31.6992 , 7.9756 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(30 - 60 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 188.976 ,  31.4452 , 7.6708 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(150 + 60 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 186.944 ,  31.2166 , 7.366 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 + 63 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 184.658 ,  30.9626 , 7.0612 ]);
}
}
translate([0,0,21*25.4])
rotate(a=(270 - 63 ), v=[0,0,1]){
rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*19)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 182.626 ,  30.7594 , 6.7818 ]);
}
}









//lower toe rest pipes


translate([0,0,6*25.4])
#rotate(a=(270 + 0 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 2630.678 ,  98.552 , 98.425 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 - 0 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 2489.2 ,  95.631 , 94.488 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(30 - 0 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 2355.85 ,  92.8116 , 90.7288 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(150 + 0 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 2229.866 ,  90.1192 , 87.0966 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 + 7 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 2111.248 ,  87.5538 , 83.6168 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 - 7 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1999.234 ,  85.0646 , 80.264 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(30 - 7 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1893.57 ,  82.677 , 77.0636 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(150 + 7 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1794.002 ,  80.391 , 73.9902 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 + 14 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1700.276 ,  78.1812 , 71.0184 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 - 14 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1611.63 ,  76.073 , 68.199 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(30 - 14 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1528.064 ,  74.0664 , 65.4558 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(150 + 14 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1449.324 ,  72.1106 , 62.865 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 + 21 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1374.902 ,  70.2564 , 60.3504 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 - 21 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1304.798 ,  68.453 , 57.9374 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(30 - 21 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1238.758 ,  66.7258 , 55.626 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(150 + 21 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1176.528 ,  65.0748 , 53.3908 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 + 28 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1117.854 ,  63.5 , 51.2572 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 - 28 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1062.228 ,  61.976 , 49.2252 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(30 - 28 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1010.158 ,  60.5028 , 47.244 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(150 + 28 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 960.882 ,  59.1058 , 45.3644 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 + 35 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 914.4 ,  57.7596 , 43.5356 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 - 35 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 870.458 ,  56.4642 , 41.8084 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(30 - 35 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 829.31 ,  55.2196 , 40.132 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(150 + 35 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 790.194 ,  54.0512 , 38.5318 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 + 42 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1341.12 ,  87.1728 , 78.3336 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 - 42 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1272.286 ,  84.709 , 75.2094 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(30 - 42 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1207.516 ,  82.3468 , 72.1868 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(150 + 42 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1146.556 ,  80.0608 , 69.3166 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 + 49 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1088.898 ,  77.8764 , 66.548 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 - 49 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 1034.796 ,  75.7682 , 63.881 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(30 - 49 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 983.488 ,  73.7616 , 61.341 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(150 + 49 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 935.482 ,  71.8312 , 58.8772 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 + 56 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 890.016 ,  69.977 , 56.5404 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(270 - 56 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 847.09 ,  68.199 , 54.2798 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(30 - 56 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 806.704 ,  66.4972 , 52.0954 ]);
}
}
translate([0,0,6*25.4])
#rotate(a=(150 + 56 ), v=[0,0,1]){
#rotate(a=-incline, v=[0,1,0]){
translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) 
cube(size=[ 768.604 ,  64.8462 , 50.0126 ]);
}
}


}//rotate entire mess to match this model











//YouTopia Pyramid
