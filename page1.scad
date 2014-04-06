use <pageOne.scad>;
use <write.scad>;

module innerLines(){
	translate([-17.5,10,0]){
		pageOneLinesInverseT();
		pageOneLinesInverseB();
	}
}


rotate([90,0,0]){
	difference(){
		pageOneLines();
		innerLines();
	}

	translate([-17.5,9,0])
		pageOneBoy();
}

translate([-20,0,-20])	
scale([0.5,0.5,1])	
rotate([90,0,0]) {
	translate([0,0,0])
	write("One evening",h=3,t=1);
	translate([0,-3,0])
	write("after thinking it over for some time,",h=3,t=1);
	translate([0,-6,0])
	write("Harold decided to go for a walk",h=3,t=1);
	translate([0,-9,0])
	write("in the moonlight",h=3,t=1);
}