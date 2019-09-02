include <args.scad>

filer_radius = case_radius + filer_tolerance;
filer_height = case_height;

filer_hole_radius = coin_radius + filer_tolerance;

// sluice
difference(){
    cylinder(h = filer_height, r = filer_radius, center = false);
    translate([0, filer_radius - filer_tolerance, 0]){
        cube([filer_radius*2, filer_radius*2, (filer_height)*2], center = true);
    }
    cylinder(h = filer_height, r = filer_hole_radius, center = false);
}

// outer frame
difference(){
    cylinder(h = filer_height, r = filer_radius, center = false);
    cylinder(h = filer_height, r = case_radius, center = false);
}

// prop
translate([0, 0, filer_height]){
    difference(){
        cylinder(h = coin_thickness, r = filer_radius, center = false);
        cylinder(h = coin_thickness, r = case_radius, center = false);
        translate([0, -(filer_radius / 2), coin_thickness / 2]){
            cube([filer_radius*2, filer_radius, coin_thickness], center = true);
        }
    }
}
