$fa=5; $fs=0.1;

difference(){
	union(){
		rotate([0,90,0]) cylinder(r=3, h=150, center=true); //поперечина
		translate([-75, 5, 0]) rotate([90,0,0]) cylinder(h=16, r=9, center=true); // бобышки крепления
		translate([75, 5, 0]) rotate([90,0,0]) cylinder(h=16, r=9, center=true);
		
		translate([-75+20, -3, -30]) cube ([20, 4, 30]); // упоры кормух
		translate([-10, -3, -30]) cube ([20, 4, 30]);
		translate([75-20-20, -3, -30]) cube ([20, 4, 30]);
	}

	union(){
		translate([-75, 1, 0]) rotate([90,0,0]) cylinder(h=16, r=5, center=true); // под бобышки крепления
		translate([75, 1, 0]) rotate([90,0,0]) cylinder(h=16, r=5, center=true);
		translate([-75, 6, 0]) rotate([90,0,0]) cylinder(h=16, r=2.3, center=true); // под винты
		translate([75, 6, 0]) rotate([90,0,0]) cylinder(h=16, r=2.3, center=true);
	}
}