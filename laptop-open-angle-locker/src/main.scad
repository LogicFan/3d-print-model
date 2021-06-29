
// w: width of u
// h: height of u
// l: length of the model
// t: the thickness
module ushape(w, h, l, t) {
    translate([t, 0, 0])
    union() {
        cube([w, l, t]);

        translate([-t, 0, 0])
        cube([t, l, h+t]);

        translate([w, 0, 0])
        cube([t, l, h+t]);
    }
}

// thickness of the laptop body: 11mm
// thickness of the laptop screen: 5mm

t1 = 11;
t2 = 5;
l1 = 20;
l2 = 10;
w = 20;
t = 3;

union() {
    ushape(t1, w, l1, t);

    rotate([0, 0, -50])
    translate([0, -l2, 0])
    ushape(t2, w, l2, t);
}
