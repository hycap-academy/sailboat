$fn=100;



difference(){
    solidmodel();
    translate([0,0,-6])
    cylinder(57,9.7,9.7);
    translate([0,0,14]){
        rotate([90,0,0])
            translate([0,0,-1])
                cylinder(72,9.25,9.25);
    }
    resize([100,110,50])
        translate([-30,-43,70])
            rotate([0,90,0])
                cylinder(50,35,35);


}



/*
difference(){

    translate([0,0,-1])
    cylinder(52,9.5,9.5);
}
*/

module solidmodel(){
    translate([-16,-70,0])
        cube([32,70,50]);   
    translate([0,0,-5])
    cylinder(55,16,16);

    }