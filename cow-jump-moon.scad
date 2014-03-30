use <cow.scad>;
use <write.scad>;

module moon(scale=1){
	difference() {
       cylinder(h = scale, r=2*scale, center = true, $fn=100);
       translate([scale,scale,0]) cylinder(h = 2*scale, r=2*scale, center = true, $fn=100);
	}
}


// Cow
translate([0,0,1])
color("red")
cow();

// Blue background
color("blue")
square([50,50], center=true);

// Moon
translate([15,-15,1.1]) {
	scale([3,3,1])
	moon();	
}

// Text
translate([-23,15,0])
scale([0.65,0.65,1])
write("Goodnight Cow jumping over the moon",h=3,t=1);