use <../lib/sector.scad>
use <../lib/triangle.scad>

$fn = 64;

t = 5;  // the screen thickness is 5mm

b = 25.4;   // 1 inch

union() {
    rotate([0, 0, 30])
    arm();
    
    body();
}

module body() {
    h = 100;
    difference() {
        body1();
        
        union() {
            translate([30, -4, h-40])
            cube([11, 2, b]);
        
            translate([30, -3, h-40])
            cube([2, 4, b]);
        }
    }
}

module body1() {
    h = 100;
    w = 40;

    t = 2;

    translate([0, -3, 0])
    union() {
        difference() {
            union() {
                translate([9, 0, 0])
                arc(h, 9, 7, 180, 250);
                
                translate([9, 0, h-2])
                sector(2, 9, 180, 250);
            }
            
            translate([3, -9, -1])
            cube([4, 1, h+2], center=false);
        }
            
        translate([0, 0, h-40])
        cube([w, 3, 40], center=false);
        
        translate([0, 0, h-40])
        rotate([270, 0, 0])
        triangle(40, 20, 3);
        
        cube([10, 3, h-40], center=false);
        
        translate([6, -8, h-2])
        cube([34, 10, 2], center=false);
    }
}

module arm() {
    h = 100;
    t = 4 - 0.3;
    or = 30;
    ir = 20 + 0.2;

    translate([-(or+3), -t, h-or])
    union() {
        translate([0, 0, -2])               // adjust for body top 2mm thickness
        difference() {
            translate([-10, 0, 0])
            cube([or+10, t, or+2], center=false);
            
            translate([0.2, 0, 0])          // adjustment, right shift 0.2mm
            translate([(or-ir)/2, -1, (or-ir)/2])
            cube([ir, t+2, h*2], center=false);
        }
    
        translate([or, -9+t, -(h-or)])
        cube([2, 6, h], center=false);

        translate([or, -3+t, -(h-or)])
        cube([3, 3, h], center=false);
        
        translate([-10, 0, -2])
        translate([40, 0, 0])
        mirror([1, 0, 0])
        rotate([270, 0, 0])
        triangle(40, 20, t);
    }
}
