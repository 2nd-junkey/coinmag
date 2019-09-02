filter_tolerance = 1;
coin_radius = 22 / 2;
filter_hole_radius = coin_radius + filter_tolerance;
coin_thickness = 1.55;

filter_radius = 30 / 2;
filter_height = 94;

difference(){
    union(){
        difference(){
            cylinder(h = filter_height, r = filter_radius + filter_tolerance, center = false);
            translate([0, filter_radius-filter_tolerance, 0]){
                cube([(filter_radius + filter_tolerance)*2, filter_radius*2, (filter_height)*2], center = true);
            }
            cylinder(h = filter_height, r = filter_hole_radius, center = false);
        }
        difference(){
            cylinder(h = filter_height + coin_thickness, r = filter_radius+filter_tolerance, center = false);
            cylinder(h = filter_height + coin_thickness, r = filter_radius, center = false);
            translate([0, -(filter_radius+filter_tolerance), filter_height + coin_thickness]){
                cube([(filter_radius + filter_tolerance)*2, (filter_radius+filter_tolerance)*2, (coin_thickness)*2], center = true);
            }
        }
    }
}
