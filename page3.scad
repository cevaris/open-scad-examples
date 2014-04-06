use <pageThree.scad>;
use <write.scad>;

rotate([90,0,0]){

	rotate([-10,0,0])
	translate([0,0,-1.5])
		lines();

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
color  ("black") 
rotate([90,0,0]) {
	write("He made a long straight path",h=3,t=1);
	translate([0,-3,0])
	write("so he wouldn't get lost.",h=3,t=1);
	translate([0,-6,0])
	write("And he set off on his walk",h=3,t=1);
	translate([0,-9,0])
	write("taking his big purple crayon with him",h=3,t=1);
}