$fa=5; $fs=0.1;

rotate([-90,0,0])
difference(){
	union(){
        hull(){
            cylinder(r=5,h=100);
            translate([5,0,0]) cylinder(r=5,h=100);
        }
	}

	union(){
        translate([2-0.25,-5,0]) cube([1.5, 7, 100]);
	}
}