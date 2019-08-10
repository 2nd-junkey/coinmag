radius = 22 / 2;
thickness = 1.55;

numbers = 50;
outsite = 30 / 2;
shell = 94;

height = thickness * numbers;
difference(){
    cylinder(h = shell, r = outsite, center = true);
    translate([0, outsite/2, 0]){
        cube([outsite*2, outsite, shell*2], center = true);
    }
    cylinder(h = height, r = radius, center = true);
    translate([0, -(outsite*2)/2, 0]){
        cube([outsite*2, outsite, shell*2], center = true);
    }
}
