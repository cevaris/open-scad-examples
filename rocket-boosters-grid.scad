use <rocket-boosters.scad>;

separation = 50;
for ( row = [-4 : 5] ) {
	for ( col = [-4 : 5] ) {
	    translate([row*separation-25,col*separation-25, rands(5,30,1)[0]])
	    rocket(20);
	}
}


color("white")
cube([50*10,50*10,5], center=true);
