$fa=5; $fs=0.1;


rotate([0, 90+11.3, 0]) difference(){
    union(){
        hull(){
            translate([-40, 10, 34]) cylinder(h=5, r=20, center=true);
            translate([-40, 120, 34]) cylinder(h=5, r=20, center=true);
        }
        
        translate([-30, 10, 17]) cylinder(h=30, r2=20, r1=5, center=true);
        translate([-30, 120, 17]) cylinder(h=30, r2=20, r1=5, center=true);
    }
    
    
    union(){
        translate([-15, 65, 22]) rotate([0, -11.3, 0]) cube ([40, 150, 40], center=true);
    }
}

