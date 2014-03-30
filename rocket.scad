module wing() {
	rotate([90,0,0])
	linear_extrude(height = 0.2, center = true)
	polygon(points=[[0,0],[0,10],[7,7],[10,0]]);
};

module wingBase() {
	rotate([0,0,0])
	wing();

	rotate([0,0,90])
	wing();

	rotate([0,0,180])
	wing();

	rotate([0,0,270])
	wing();
}


wingBase();

