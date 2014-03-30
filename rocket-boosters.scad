module wing(scale=10) {
	rotate([90,0,0])
	linear_extrude(height = scale*0.02, center = true)
	polygon(points=[[0,0],[0,scale],[scale*0.7,scale*0.7],[scale,0]]);
}

module booster(scale=10) {
	translate([0,0,scale*0.75])	
	cylinder(h = scale*0.25, r1=scale/6, r2=scale/8);
	cylinder(h = scale*0.75, r1=scale/9, r2=scale/6);
}

module rocket(scale=10) {
	rotate([0,0,0])
	wing(scale);

	rotate([0,0,90])
	wing(scale);

	rotate([0,0,180])
	wing(scale);

	rotate([0,0,270])
	wing(scale);

	translate([scale/3,scale/3])	
	booster(scale);
	translate([-scale/3,scale/3])	
	booster(scale);
	translate([scale/3,-scale/3])	
	booster(scale);
	translate([-scale/3,-scale/3])	
	booster(scale);

	// Cylinder base
	color("green",0.5)
	cylinder(h = scale, r1=scale/4, r2=scale/3);

	// Cylinder mid
	midHeight = scale/2;
	midWidth  = scale/3.5;
	translate([0,0,scale])
	color("red",0.5)
	cylinder(h = midHeight, r1=scale/3, r2=midWidth);

	// Cylinder long
	longHeight = scale+midHeight;
	translate([0,0,longHeight])
	color("blue",0.5)
	cylinder(h = scale*1.75, r1=midWidth, r2=scale/3.5);

	coneHeight = scale*1.75+longHeight;
	translate([0,0,coneHeight])
	color("black",0.5)
	cylinder(h = (scale/2), r1=midWidth, r2=0);

}

