radius = 22 /2;
thickness = 1.5;

numbers = 5;
outsite = 30 / 2;
shell = 2;

height = thickness * numbers;

difference(){
    cylinder(h = height+shell, r = outsite, center = false);
    translate([0, outsite/2, (height+shell)/2]){
        cube([outsite*2, outsite, (height+shell)*2], center = true);
    }
    translate([0, 0, shell]){
        cylinder(h = height+shell, r = radius, center = false);
    }
}
