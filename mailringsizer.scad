$fn=100;

difference(){
    cylinder(5,12,12);
    translate([0,0,-1])
    cylinder(12,9.5,9.5);
}
translate([0,0,5])
difference(){
    cylinder(5,12,12);
    translate([0,0,-1])
    cylinder(12,10,10);
}