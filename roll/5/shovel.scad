coin_radius = 22 /2;
coin_thickness = 1.55;

coin_numbers = 5;
shovel_radius = 30 / 2;
shovel_bottom = 2;

height = coin_thickness * coin_numbers;

difference(){
    cylinder(h = height+shovel_bottom, r = shovel_radius, center = false);
    translate([0, shovel_radius/2, (height+shovel_bottom)/2]){
        cube([shovel_radius*2, shovel_radius, (height+shovel_bottom)*2], center = true);
    }
    translate([0, 0, shovel_bottom]){
        cylinder(h = height+shovel_bottom, r = coin_radius, center = false);
    }
}
