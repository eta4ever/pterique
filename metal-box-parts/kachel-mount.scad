$fa=5; $fs=0.1;

difference(){
	union(){
		cylinder(r=7, h=15);
		translate([188,0,0]) cylinder(r=7, h=15);
		translate([0,0,2.5]) rotate([0,90,0]) cylinder(r=2.5, h=188);
	}

	union(){
		translate([0, 0,-0.1]) cylinder(r=2, h=15.2);
		translate([0, 0,-0.1]) cylinder(r=5, h=10);

		translate([188, 0,-0.1]) cylinder(r=2, h=15.2);
		translate([188, 0,-0.1]) cylinder(r=5, h=10);

	}
}