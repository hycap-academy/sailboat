$fn=100;
include<naca4.scad>

/* mail sail */
/*
translate([0,100,-410])
    rotate([0,0,-90])
            airfoil(naca = 0012, L = 400, N=1001, h = 400, open = false); 


    jointasm1();
    cam1();

    translate([0,-60,35])
        rotate([0,90,0])
            swivel1();

    translate([-16,-360,0])
    {
        trimjointasm1();
        trimRodasm1();
    }
*/

    translate([0,-325,-55])
        trimSailAsm1();


module trimSailAsm1(){
    difference(){
        trimSail();
            translate([0,-55,-100])
            cylinder(200,5,5);
    }

    
}

module trimSail(){

    rotate([0,0,-90])
        airfoil(naca = 0012, L = 120, N=1001, h = 50, open = false); 
    }
    
module jointasm1(){
    difference(){
    joint();
    translate([0,0,-6])
        cylinder(57,9.7,9.7);
        
    translate([0,-60,-6])
        cylinder(57,5,5);    
        
    translate([0,0,14]){
        rotate([90,0,0])
            translate([0,0,65])
                cylinder(72,9.25,9.25);
        }
    }
    
}
    

module joint(){
    translate([-16,-120,0])
        cube([32,120,26]); 

    cylinder(50,16,16);


    }
    
 module cam1(){
    difference(){
    cam();
    translate([0,0,0])
        cylinder(60,16.3,16.3);   
    }
 }
 module cam(){
    color("Blue",1.0){
        translate([0,-12,30]){
            cylinder(5, 34, 30);
            cylinder(25,20,20);
            translate([0,0,5])
                cylinder(5,30,34);
        }
    }
 }
 
 module swivel1(){
     
    difference(){
        swivel();
    
        rotate([0,90,0]){
            translate([0,0,-5])
                cylinder(100,3,3);
            translate([80,0,-5])
                cylinder(30, 3, 3);
        }
    }

 }
 
 module swivel(){
     translate([0,0,-20])
     cube([8, 8, 120], center=true);
     
     rotate([0,90,0]){
     
        translate([0,0,-4])
            cylinder(40,4.6, 4.6);
        translate([80,0,-4])
            cylinder(8,5,5);
         
     }
     
     rotate([90,0,0]){
        translate([0,-35,-137])
            cylinder(140, 4,4);
     translate([0,35,-137])
            cylinder(140, 4,4);
     }
     translate([0,137,0])
     cube([8, 8, 80], center=true);
     }
 
 module trimjointasm1(){
     difference(){
        trimjoint();
        translate([16,-20,-50])
            cylinder(102,5.2,5.2);
        rotate([90,0,0])
            translate([16,18,-50])
                cylinder(50,9.25,9.25);
        }

     }


     
 module trimjoint(){
        cube([32,40,32]); 
        translate([0,-40,00])
            cube([32, 40, 8]);
     }
     
module trimRodasm1(){
    difference(){
        trimRod();
        translate([-20,-21,18])
            cylinder(102,3,3);
        }
    }

module trimRod(){
    translate([16,-20,-25])
        cylinder(50,4.8,4.8);
    translate([-20,-24,18])
        cube([40,8,8]);
    translate([-20,-20,18])
    cylinder(8,5,5);
    
    }