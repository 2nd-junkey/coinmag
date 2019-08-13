tolerance = 1;
radius = 22 / 2 + tolerance;
thickness = 1.55;

numbers = 50;
outsite = 30 / 2;
shell = 94;

difference(){
    union(){
        difference(){
            cylinder(h = shell, r = outsite + tolerance, center = false);
            translate([0, outsite-tolerance, 0]){
                cube([(outsite + tolerance)*2, outsite*2, (shell)*2], center = true);
            }
            cylinder(h = shell, r = radius, center = false);
        }
        difference(){
            cylinder(h = shell + thickness, r = outsite+tolerance, center = false);
            cylinder(h = shell + thickness, r = outsite, center = false);
            translate([0, -(outsite+tolerance), shell + thickness]){
                cube([(outsite + tolerance)*2, (outsite+tolerance)*2, (thickness)*2], center = true);
            }
        }
    }
}
