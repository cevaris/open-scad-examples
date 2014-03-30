
module tower(scale=1) {

	height = scale*20;
	radius = scale*5;

	linear_extrude(height = height,  twist = -100, $fn=100, scale=[0.7,0.6])
	translate([1, 0.2, 0])
	circle(r = radius, center = true);


}

module window(scale=1){

	translate([0,0,scale*5])
	rotate([90,90])
	cylinder(h = scale*5, r=2*scale, center=true, $fn=100);

	translate([0,0,scale*3])
	rotate([90,90])
	scale([1, 1,scale*5])
	square([scale*5,scale*3.98], center=true);
	
}

//window();
tower(2);



