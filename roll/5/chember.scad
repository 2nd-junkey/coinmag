tolerance = 2;
radius = 30 / 2 + tolerance;
thickness = 1.55;

height = 94 + tolerance;
outsite = radius + thickness*2;

difference(){
    cylinder(h = height, r = outsite, center = false);
    cylinder(h = height, r = radius, center = false);
    translate([0, outsite, height]){
        cube([outsite*2, outsite*2, thickness*1.5*2], center = true);
    }
}

translate([0, 0, height]){
    intersection(){
        cylinder(h = thickness, r = outsite, center = false);
        translate([0, -(15*2)/2, 0]){
            cube([outsite*2, 15, thickness*2], center = true);
        }
    }
}

translate([0, 0, -thickness*3]){
    difference(){
        cylinder(h = thickness*3, r = outsite, center = false);
        cylinder(h = thickness*3, r = radius, center = false);
        translate([0, -(outsite + tolerance)/2, (thickness + tolerance)]){
            cube([outsite*2, outsite, thickness*2], center = true);
        }
        translate([0, 0, (thickness + tolerance)]){
            cube([radius*2, radius*2, thickness*2], center = true);
        }
    }
}
