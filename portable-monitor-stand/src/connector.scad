outer = 30;
inner = 20;
thickness = 4;

connector(outer, inner);

module connector (o, i) {
    union() {
        translate([0, 0, thickness/2])
        cube([i, i, thickness], center=true);

        translate([0, 0, -1])
        cube([o, o, 2], center=true);
    }
}
