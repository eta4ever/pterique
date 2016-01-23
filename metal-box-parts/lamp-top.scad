$fa=5; $fs=0.1;

R=5;
H=4;
Llamp=342;
Wlamp=23;
Lhole=345;
Whole=25;

difference(){
	union(){
        hull(){
            //пластина
            translate([-Llamp/2 - 20 + R, -Wlamp/2 - 20 + R, H/2]) cylinder(r=R, h=H, center=true);
            translate([-Llamp/2 - 20 + R, Wlamp/2 + 20 - R, H/2]) cylinder(r=R, h=H, center=true);
            translate([Llamp/2 + 20 - R, -Wlamp/2 - 20 + R, H/2]) cylinder(r=R, h=H, center=true);
            translate([Llamp/2 + 20 - R, Wlamp/2 + 20 - R, H/2]) cylinder(r=R, h=H, center=true);
        }    
        
        //выступ
        translate([0,0, H+ H/2]) cube([Lhole, Whole, H], center=true);
	}

	union(){
        //вырез под лампу
        translate([0,0, H]) cube([Llamp, Wlamp, H*2], center=true);
	}
}