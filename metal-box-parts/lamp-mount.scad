$fa=5; $fs=0.1;

//тупо маленькие уголки, которые к этой лампе будут приклеены

cube([12,12,2]);
cube([12,2,12]);
translate([7,0,0]) rotate([0,-90,0]) linear_extrude(height=2) polygon([[0,0],[12,0],[0,12]]);