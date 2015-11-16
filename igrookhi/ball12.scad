$fa=5; $fs=0.1;


difference(){
    
    sphere(r=6, center=true);
    
    union(){
        cylinder(h=12.1, r=2, center=true);
        rotate([0,90,0]) cylinder(h=12.1, r=2, center=true);
        rotate([90,0,0]) cylinder(h=12.1, r=2, center=true);
    }
    
}