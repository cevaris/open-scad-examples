use <pageTwo.scad>;
use <write.scad>;

rotate([90,0,0]){

	rotate([-10,0,0])
	translate([0,0,-1.5])
		middleLine();

	scale([1.5,1.5,1.5])
	translate([-20,5,0])
		difference(){
			outerMoon();
			innerMoon();
		}

	translate([-17.5,4.5,0])
		boy();
}

translate([-20,0,-15])	
scale([0.5,0.5,1])	
rotate([90,0,0]) {
	write("There wasn't any moon,",h=3,t=1);
	translate([0,-3,0])
	write("and Harold needed a moon",h=3,t=1);
	translate([0,-6,0])
	write("for a walk in the moonlight.",h=3,t=1);
	translate([0,-9,0])
	write("And he needed something to walk on",h=3,t=1);
}