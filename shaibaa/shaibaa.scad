$fa=5; $fs=0.1;
difference(){
    union(){
            hull(){
            for(zangle = [0 : 10 : 360]){
				rotate([90,0,zangle]) translate([18,0,0]) cylinder(r=2.5, h=1, center=true); 
			}//f
            }//h
    }
    union(){
        
            cylinder(h=5.1, r=3.5, center=true);
    }
}