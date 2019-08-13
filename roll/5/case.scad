tolerance = 1;
radius = (22 + tolerance) / 2;
thickness = 1.55;

numbers = 50;
outsite = 30 / 2;
shell = 94;

height = thickness * numbers;
difference(){
    union(){
        difference(){
            cylinder(h = shell, r = outsite, center = true);
            translate([0, outsite/2, 0]){
                cube([outsite*2, outsite, shell*2], center = true);
            }
            cylinder(h = height, r = radius, center = true);
        }
        translate([0, 0, height/2]){
            cylinder(h = (shell - height)/2, r = radius, center = false);
        }
    }
    translate([0, -(outsite*2)/2, 0]){
        cube([outsite*2, outsite, shell*2], center = true);
    }
}
difference(){
    translate([0, -outsite/8, -(shell/2 + thickness)]){
        cube([outsite/2, outsite/4, thickness*2], center=true);
    }
    translate([0, -outsite/8, -(shell/2 + thickness/2)]){
        cube([outsite/4, outsite/4, thickness], center=true);
    }
}
