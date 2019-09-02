include <args.scad>

filer_radius = case_radius;
filer_height = case_height;

filer_hole_radius = coin_radius + filer_tolerance;

difference(){
    union(){
        difference(){
            cylinder(h = filer_height, r = filer_radius + filer_tolerance, center = false);
            translate([0, filer_radius-filer_tolerance, 0]){
                cube([(filer_radius + filer_tolerance)*2, filer_radius*2, (filer_height)*2], center = true);
            }
            cylinder(h = filer_height, r = filer_hole_radius, center = false);
        }
        difference(){
            cylinder(h = filer_height + coin_thickness, r = filer_radius+filer_tolerance, center = false);
            cylinder(h = filer_height + coin_thickness, r = filer_radius, center = false);
            translate([0, -(filer_radius+filer_tolerance), filer_height + coin_thickness]){
                cube([(filer_radius + filer_tolerance)*2, (filer_radius+filer_tolerance)*2, (coin_thickness)*2], center = true);
            }
        }
    }
}
