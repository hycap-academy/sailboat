$fn=100;


difference(){
    solidcyl();
    translate([0,0,-1])
    cylinder(102,9.25,9.25);
}


module solidcyl(){
        cylinder(2,35,35);
    cylinder(100,18,18);
    }


