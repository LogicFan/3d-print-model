
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

ushape(10, 20, 30, 2);