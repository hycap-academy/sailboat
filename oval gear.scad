
difference(){
scale([1.0, 2.0, 1.0]){
cylinder(h=5, r=20, $fn=100);
}
    // cut the center hole
    cube([5.2,1.9,10],center=true);
    cube([1.9,5.2,10],center=true);
}