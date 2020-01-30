


difference(){
    baseplate();
        servo();

    rotate([90,0,0]){
        translate([50,0,-5]){
            linear_extrude(height=70)
                circle(11);
        }
    }
}

module baseplate(){
translate([20,-4,-30]){
        linear_extrude(height=60)
            square([100,6], center=true);
}
rotate([90,0,0]){
translate([50,0,0])
    linear_extrude(height=30)
        circle(15);
}
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
