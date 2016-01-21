$fa=5; $fs=0.1;

difference(){
	union(){
		cylinder(r=10, h=14, center=true);
	}

	union(){
		translate([0, 0, 2]) cylinder(r=6, h=10, center=true);
		translate([0, 0, 0]) cylinder(r=2.2, h=14, center=true);
	}
}