use <pageTwo.scad>;
use <write.scad>;

rotate([90,0,0]){

	linear_extrude(height = 1)
	rotate([-10,0,0])
	translate([0,0,-1.5])
		middleLine();

	linear_extrude(height = 1)
	scale([1.5,1.5,1.5])
	translate([-20,5,0])
		difference(){
			outerMoon();
			innerMoon();
		}

	linear_extrude(height = 1)
	translate([-17.5,4.5,0])
		boy();
}
