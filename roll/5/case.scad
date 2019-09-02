coin_tolerance = 1;
coin_radius = 22 / 2;
coin_insert_radius = coin_radius + coin_tolerance / 2;
coin_thickness = 1.55;

coin_numbers = 50;
case_radius = 30 / 2;
case_height = 94;

height = coin_thickness * coin_numbers;
difference(){
    union(){
        difference(){
            cylinder(h = case_height, r = case_radius, center = true);
            translate([0, case_radius/2, 0]){
                cube([case_radius*2, case_radius, case_height*2], center = true);
            }
            cylinder(h = height, r = coin_insert_radius, center = true);
        }
        translate([0, 0, height/2]){
            cylinder(h = (case_height - height)/2, r = coin_insert_radius, center = false);
        }
    }
    translate([0, -(case_radius*2)/2, 0]){
        cube([case_radius*2, case_radius, case_height*2], center = true);
    }
}
difference(){
    translate([0, -case_radius/8, -(case_height/2 + coin_thickness)]){
        cube([case_radius/2, case_radius/4, coin_thickness*2], center=true);
    }
    translate([0, -case_radius/8, -(case_height/2 + coin_thickness/2)]){
        cube([case_radius/4, case_radius/4, coin_thickness], center=true);
    }
}
