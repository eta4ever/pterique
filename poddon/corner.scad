$fa=5; $fs=0.1;

length=40;
pvc_thick=5;
angle=11.3;

translate([0,0,-8]) rotate([90-angle,0,0]){

difference(){
union(){

//1
difference(){
    
    union(){
        
            cube([25,length,37]); //из чего вырезается
            rotate([0,-angle,0]) cube([15,length,40]); // наклонная часть
    }
    
    
    union(){
        
            translate([13.01, -0.01, 4]) cube([12.01,length+0.02,pvc_thick]); //под лист ПВХ
            translate([28,length+0.01,47]) rotate([90,0,0]) cylinder(h=length+0.02, r=35); //скос
            translate([-10,-10,37]) cube ([61,length+11,10]); // срезать все сверху
    }
}

//2
translate([length-7.4, 7.4, 0])
rotate([0, 0, 90])
difference(){
    
    union(){
        
            cube([25,length,37]); //из чего вырезается
            rotate([0,-angle,0]) cube([15,length,40]); // наклонная часть
    }
    
    
    union(){
        
            translate([13.01, -0.01, 4]) cube([12.01,length+0.02,pvc_thick]); //под лист ПВХ
            translate([28,length+0.01,47]) rotate([90,0,0]) cylinder(h=length+0.02, r=35); //скос
            translate([-10,-10,37]) cube ([61,length+11,10]); // срезать все сверху
    }
}
}

union(){
        // срезать лишнее после пересечения
        translate([-7.4, -1.7, -5]) rotate([angle, 0, 0]) cube([length, 10, 60]);
        rotate([0,0, 90]) translate([-1, -1, -5]) rotate([-angle, 0, 0]) cube([length+5, 10, 60]);
    
        translate([-1.9, length-2, 9.5]) rotate ([0, 90-angle, 0]) cube([5,2.01,10]); // вырез
        
}


}

translate([length-5.5, 5.5, 9.5]) rotate ([0, 90-angle, 90]) cube([5,2.01,10]); // выступ
}