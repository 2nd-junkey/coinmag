tolerance = 1;
radius = 22 / 2 + tolerance;

numbers = 50;
outsite = 30 / 2;
shell = 94;

difference(){
    union(){
        difference(){
            cylinder(h = shell, r = outsite, center = true);
            translate([0, outsite-tolerance, 0]){
                cube([outsite*2, outsite*2, shell*2], center = true);
            }
            cylinder(h = shell, r = radius, center = true);
        }
        difference(){
            cylinder(h = shell, r = outsite+tolerance, center = true);
            cylinder(h = shell, r = outsite, center = true);
        }
    }
}
