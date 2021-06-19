inner = 11;
outer = 18;
h = 1.7;

$fn = 128;

difference() {
    union() {
        cube([outer, outer, h], center=false);
        
        translate([outer / 2, 3, 0])
        cylinder(h=1.7, r=7, center=false);

        translate([(outer - 4) / 2, -2, -0.5])
        cube([4, 0.5, h+1]);
    }

    diff = (outer - inner) / 2;
    translate([diff, diff, -1])
    cube([inner, 100, h+2]);
}