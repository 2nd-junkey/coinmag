include <args.scad>

shovel_radius = case_radius;
shovel_height = coin_thickness * shovel_coin_numbers;

difference(){
    // outer frame
    cylinder(h = shovel_height+shovel_bottom, r = shovel_radius, center = false);
    // mortise
    translate([0, 0, shovel_bottom]){
        cylinder(h = shovel_height+shovel_bottom, r = coin_radius, center = false);
    }
    // cutting half
    translate([0, shovel_radius/2, (shovel_height+shovel_bottom)/2]){
        cube([shovel_radius*2, shovel_radius, (shovel_height+shovel_bottom)*2], center = true);
    }
}
