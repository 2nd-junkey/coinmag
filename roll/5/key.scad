tolerance = 1;
radius = (30 + tolerance) / 2;
thickness = 1.55;

height = thickness + tolerance;
outsite = radius + thickness*2;

difference(){
    cylinder(h = height, r = outsite, center = false);
    translate([0, outsite/2, 0]){
        cube([outsite*2, outsite, height*2], center = true);
    }
}
intersection(){
    cylinder(h = height, r = outsite, center = false);
    translate([0, 0, height]){
        cube([radius*2, radius*2, height*2], center = true);
    }
}
