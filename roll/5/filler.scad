tolerance = 1;
radius = (22 + tolerance) / 2;

numbers = 50;
outsite = 30 / 2;
shell = 94;

difference(){
    union(){
        difference(){
            cylinder(h = shell, r = outsite, center = true);
            translate([0, outsite/2, 0]){
                cube([outsite*2, outsite, shell*2], center = true);
            }
            cylinder(h = shell, r = radius, center = true);
        }
        difference(){
            cylinder(h = shell, r = outsite+tolerance, center = true);
            cylinder(h = shell, r = outsite, center = true);
        }
    }
}
