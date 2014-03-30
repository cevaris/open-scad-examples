translate([0,0,5]) {
	rotate(a=[0,180,0]) {
		color("red")
		linear_extrude(height = 2, scale=3) 
		square ([3,2],center = true);
	}
};

translate([0,0,0]) {
	color("gray")
	linear_extrude(height = 3)
	square ([9,6],center = true);
};

translate([-0.75,3,0]) {
	// rotate(a=[0,90,0])
	cube([1.5,0.5,2.5]);
};


