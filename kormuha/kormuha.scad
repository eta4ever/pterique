$fa=5; $fs=0.1;

R=2;

difference(){
	union(){
		hull(){ //внешнее
			sphere(r=R, center=true);
			translate([30,0,0]) sphere(r=R, center=true);
			translate([40,0,20]) sphere(r=R, center=true);
			translate([0,0,20]) sphere(r=R, center=true);

			translate([0,60,0]) sphere(r=R, center=true);
			translate([30,60,0]) sphere(r=R, center=true);
			translate([40,60,20]) sphere(r=R, center=true);
			translate([0,60,20]) sphere(r=R, center=true);
		}

		translate([-1, 10, 17]) cylinder(r1=3, r2=5, h=8, center=true); // под крючки
		translate([-1, 50, 17]) cylinder(r1=3, r2=5, h=8, center=true);
	}

	union(){
			hull(){ //вырез
			translate([2,2,2]) sphere(r=R, center=true);
			translate([28,2,2]) sphere(r=R, center=true);
			translate([38,2,24]) sphere(r=R, center=true);
			translate([2,2,24]) sphere(r=R, center=true);

			translate([2,58,2]) sphere(r=R, center=true);
			translate([28,58,2]) sphere(r=R, center=true);
			translate([38,58,24]) sphere(r=R, center=true);
			translate([2,58,24]) sphere(r=R, center=true);
		}

		translate([-3, 10, 17]) cylinder(r=1, h=8, center=true); // под крючки
		translate([-3, 50, 17]) cylinder(r=1, h=8, center=true);
	}

}
					 

translate([55, 30, 18]) rotate([90,0,0]) cylinder(r=4, h=60, center=true); //жердочка

hull(){
	translate([55, -1, 18]) rotate([90,0,0]) cylinder(r=4, h=2, center=true);
	translate([36, -1, 16]) rotate([90,0,0]) cylinder(r=4, h=2, center=true);
}

hull(){
	translate([55, 61, 18]) rotate([90,0,0]) cylinder(r=4, h=2, center=true);
	translate([36, 61, 16]) rotate([90,0,0]) cylinder(r=4, h=2, center=true);
}
