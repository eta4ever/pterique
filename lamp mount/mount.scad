$fa=5; $fs=0.1;


rotate([90,0,0]){

cube([25, 9.5, 2], center=true);
translate([0, 0, 2]) cube([25, 6.5, 3], center=true);
translate([0, 9-(9.5/2), 6.5]) 
    difference(){
        cube([40, 18, 6], center=true);
        translate([1.51, 0, 0]) cube([37, 14, 2], center=true);
    }
    
}