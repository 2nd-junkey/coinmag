include <args.scad>


// main frame
difference(){
    cylinder(h = case_hole_height, r = chember_radius, center = false);
    cylinder(h = case_hole_height, r = case_hole_radius, center = false);
    translate([0, chember_radius, case_hole_height]){
        cube([chember_radius*2, chember_radius*2, coin_thickness*1.5*2], center = true);
    }
}

// flap
translate([0, 0, case_hole_height]){
    intersection(){
        cylinder(h = coin_thickness, r = chember_radius, center = false);
        translate([0, -(15*2)/2, 0]){
            cube([chember_radius*2, 15, coin_thickness*2], center = true);
        }
    }
}

// keyhole
translate([0, 0, -key_thickness*3]){
    difference(){
        cylinder(h = key_thickness*3, r = chember_radius, center = false);
        cylinder(h = key_thickness*3, r = case_hole_radius, center = false);
        translate([0, -(chember_radius + case_tolerance)/2, (key_thickness + case_tolerance)]){
            cube([chember_radius*2, chember_radius, key_thickness*2], center = true);
        }
        translate([0, 0, (key_thickness + case_tolerance)]){
            cube([case_hole_radius*2, case_hole_radius*2, key_thickness*2], center = true);
        }
    }
}
