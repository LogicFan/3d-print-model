$fn = 360;

module holder() {
    width = 44;
    height = 12;
    thickness = 4;
    hole = 4;

    difference() {
        linear_extrude(height = thickness, center = false)
        polygon(points = [
            [height, 0],
            [width - height, 0],
            [width, height],
            [0, height]
        ], paths = [[0, 1, 2, 3]], convexity = 1);
    
        translate([width / 2, height / 2, -1])
        cylinder(h = thickness + 2, 
            r = hole / 2, center = false);
    }
}

holder();
