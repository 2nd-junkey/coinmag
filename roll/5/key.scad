include <args.scad>

difference(){
    cylinder(h = key_thickness, r = key_radius, center = false);
    translate([0, key_radius/2, 0]){
        cube([key_radius*2, key_radius, key_thickness*2], center = true);
    }
}
intersection(){
    cylinder(h = key_thickness, r = key_radius, center = false);
    translate([0, 0, key_thickness]){
        cube([key_width*2, key_width*2, key_thickness*2], center = true);
    }
}
