$fa=5; $fs=0.1;

length=30;
pvc_thick=5;

difference(){
    
    union(){
        
        rotate([0,-(90-11.3),0]){
            cube([25,length,37]); //из чего вырезается
            rotate([0,-11.3,0]) cube([15,length,40]); // наклонная часть
        }
        
        translate([-10, -2, 0]) cube([5,2,10]); // выступ под стык
    }
    
    
    union(){
        
        rotate([0,-(90-11.3),0]){
            translate([13.01, -0.01, 4]) cube([12.01,length+0.02,pvc_thick]); //под лист ПВХ
            translate([28,length+0.01,47]) rotate([90,0,0]) cylinder(h=length+0.02, r=35); //скос
            translate([-10,-10,37]) cube ([61,length+11,10]); // срезать все сверху
        }
        
        translate([-10, length-2, -0.01]) cube([5,2.01,10.01]); // вырез под стык
    }
}

