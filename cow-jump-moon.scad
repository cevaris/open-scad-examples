use <cow.scad>;
use <write.scad>;

module moon(scale=1){
	difference() {
       cylinder(h = scale, r=2*scale, center = true, $fn=100);
       translate([scale,scale,0]) cylinder(h = 2*scale, r=2*scale, center = true, $fn=100);
	}
}


translate([0,0,1])
color("red")
cow();

color("blue")
square([50,50], center=true);


/*
translate([0,0,5]) {
	difference() {
       cylinder (h = 4, r=1, center = true, $fn=100);
        rotate ([90,0,0]) cylinder (h = 4, r=0.9, center = true, $fn=100);
	}
}
*/

translate([0,0,10]) {
	moon();	
}