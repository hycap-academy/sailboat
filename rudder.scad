iwidth = 4;
ilength= 4;
iheight=2.5;

mmwidth=iwidth*25.4;
mmlength=ilength*25.4;
mmheight=iheight*25.4;

rudderdia=15;
ruddershaft=10;

wall=3;







difference(){
    box();
    translate([wall, wall, -1]){
        cube([mmwidth-2*wall,mmlength-2*wall,mmheight-wall]);
    }
    
    translate([32,mmlength/2,150]){
        rotate([90,0,0]){
            servo();
        }
    }
    
    translate([80,mmlength/2, 5]){
        cylinder(120,ruddershaft,ruddershaft);
    } 
}
rudderholder();

module rudderholder(){
    difference(){
        translate([80,mmlength/2, 10]){
            cylinder(50,rudderdia,rudderdia);
        } 
        translate([80,mmlength/2, 5]){
            cylinder(70,ruddershaft,ruddershaft);
        }   
    }
}

module box(){
    cube([mmwidth,mmlength,mmheight]);

}

module servo(){ 
 //40.5x20
 color("yellow")
     
     rotate([90,0,0]){
        linear_extrude(height=120)
            square([42,21], center=true);
        linear_extrude(height=120)
            square([52,3], center=true);
         
         //10x50.5
         translate([25.5,5,60]){
            cylinder(h=120, r=1.5, center=true);
            translate([-50.5,0,0]){
                cylinder(h=120, r=1.5, center=true);
                translate([0,-10,0]){
                    cylinder(h=120, r=1.5, center=true);
                    translate([50.5,0,0])
                        cylinder(h=120, r=1.5, center=true);
                }
             }
         }
    }
}