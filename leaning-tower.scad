use <cloud.scad>;
use <bird.scad>;

module tower(scale=1) {

	height = scale*20;
	radius = scale*5;

	color("red",0.5)
	linear_extrude(height = height,  twist = 300, convexity = 10, $fn=100, scale=[0.7,0.6])
	translate([1, 0.2, 0])
	circle(r = radius, center = true);
}

module window(scale=1){
	translate([0,0,scale*5])
	rotate([90,90])
	cylinder(h = scale*5, r=2*scale, center=true, $fn=100);

	translate([0,0,scale*3])
	rotate([90,90])
	scale([1, 1,scale*5])
	square([scale*5,scale*3.98], center=true);	
}

module multiWindow(){
	translate([0,0,45])
	scale([1.5,6,1.5])
	window();

	translate([0,0,20])
	scale([1.5,6,1.5])
	window();
}

difference(){
   tower(3);
	multiWindow();	
}

for ( row = [0 : 10] ) {
	translate([rands(-50,50,1)[0],rands(10,30,1)[0], rands(0,80,1)[0]])
	rotate([90,0,0])
	scale([1,1,3])
    cloud();

	translate([rands(-50,50,1)[0],rands(10,30,1)[0], rands(0,80,1)[0]])
	rotate([90,0,0])
	scale([1,1,3])
    bird();
}




