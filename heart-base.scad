//start
module  bisecHeart() { 
	color  ([0.6,0.6,0.6]) { 
    polygon(
      points = [
        [15.00,3.00]
        ,[13.00,5.00]
        ,[10.00,6.00]
        ,[7.00,6.00]
        ,[5.00,3.00]
        ,[4.00,0.00]
        ,[4.00,-3.00]
        ,[6.00,-7.00]
        ,[9.00,-12.00]
        ,[11.00,-15.00]
        ,[13.00,-17.00]
        ,[15.00,-18.00]],
      paths = [[0,1,2,3,4,5,6,7,8,9,10,11]]
    );
  }
}

translate([0,1.5,20])
rotate(a=[90,0,0]) {
	translate([-15,0,0])
	color("red")
	linear_extrude(height = 3)
	bisecHeart();

	translate([15,0,3])
	color("red")
	rotate(a=[0,180,0])
	linear_extrude(height = 3)
	bisecHeart();
}
cube([20,20,5], center=true);