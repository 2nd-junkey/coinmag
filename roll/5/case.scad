include <args.scad>

coin_insert_radius = coin_radius + coin_tolerance / 2;

// main frame
difference(){
    union(){
        difference(){
            cylinder(h = case_height, r = case_radius, center = true);
            translate([0, case_radius/2, 0]){
                cube([case_radius*2, case_radius, case_height*2], center = true);
            }
            cylinder(h = coin_height, r = coin_insert_radius, center = true);
        }
        translate([0, 0, coin_height/2]){
            cylinder(h = (case_height - coin_height)/2, r = coin_insert_radius, center = false);
        }
    }
    translate([0, -(case_radius*2)/2, 0]){
        cube([case_radius*2, case_radius, case_height*2], center = true);
    }
}

// strap hole
difference(){
    translate([0, -case_radius/8, -(case_height/2 + coin_thickness)]){
        cube([case_radius/2, case_radius/4, coin_thickness*2], center=true);
    }
    translate([0, -case_radius/8, -(case_height/2 + coin_thickness/2)]){
        cube([case_radius/4, case_radius/4, coin_thickness], center=true);
    }
}
