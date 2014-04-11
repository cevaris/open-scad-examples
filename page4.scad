use <pageFour.scad>;
use <write.scad>;

rotate([90,0,0]){

	linear_extrude(height = 1)
	rotate([-10,0,0])
	translate([0,0,-1.5])
		lines();

	linear_extrude(height = 1)
	scale([1.5,1.5,1.5])
	translate([-20,5,0])
		difference(){
			outerMoon();
			innerMoon();
		}

	linear_extrude(height = 1)
	translate([-17.5,7,0])
		boy();
}

translate([-20,0,-15])	
scale([0.5,0.5,1])	
color("black")
rotate([90,0,0]) {
	write("But he didn't seem to be getting anywhere",h=3,t=1);
	translate([0,-3,0])
	write("on the long straight path.",h=3,t=1);
	translate([0,-6,0])
	write("So he left teh path for a short cut accross the field.",h=3,t=1);
	translate([0,-9,0])
	write("And the moon went with him",h=3,t=1);
}