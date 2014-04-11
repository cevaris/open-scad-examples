use <pageOne.scad>;
use <write.scad>;

module innerLines(){
	translate([-17.5,10,0]){
		pageOneLinesInverseT();
		pageOneLinesInverseB();
	}
}


rotate([90,0,0]){

	linear_extrude(height = 1)
	difference(){
		pageOneLines();
		innerLines();
	}

	linear_extrude(height = 1)
	translate([-17.5,9,0])
		pageOneBoy();
}
