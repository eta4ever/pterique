$fa=5; $fs=0.1;

module hexagon(in_diam, height) {
  cube_x = in_diam/1.75;
  for (r = [-60, 0, 60]) rotate([0,0,r]) cube([cube_x, in_diam, height], center=true);
}


difference(){
	union(){
		translate([0,0,17]) cylinder(r=10, h=34, center=true); //основная трубка
        translate([0,0,7.5]) cylinder(r1=15, r2=10, h=15, center=true); //подошва
	}

	union(){
		translate([0, 0, 2]) hexagon(7.8, 4); // под гайку
        translate([0, 0, 4.5]) cylinder (r=2.2, h=9, center=true); // под винт
    	translate([0, 0, 21.5]) cylinder(r=6, h=25, center=true); // под жердочку
        
        translate([0, 8, 19]) rotate([90,0,0]) cylinder (h=5, r=2, center=true); // под саморезы
        translate([0, 8, 29]) rotate([90,0,0]) cylinder (h=5, r=2, center=true);
	}
}