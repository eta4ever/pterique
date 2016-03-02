$fa=5; $fs=0.1;

difference(){
	union(){
		cylinder(r=7, h=15);
	}

	union(){
		translate([0, 0,-0.1]) cylinder(r=2, h=15.2);
		translate([0, 0,-0.1]) cylinder(r=5, h=6);
        
        translate([0,0,5]) rotate([90,0,0]) cylinder(r=0.7, h=100);
	}
}