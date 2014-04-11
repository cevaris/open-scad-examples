use <pageThree.scad>;
use <write.scad>;

rotate([90,0,0]){

//	rotate([-90,0,0])
	//translate([-0.5,7,-5])
	rotate([-20,0,0])
	translate([0,0,-1.5])
	linear_extrude(height = 1)
		lines();

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
