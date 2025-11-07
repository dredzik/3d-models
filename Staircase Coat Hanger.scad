union($fn = 100) {
    rotate([0, -41.4, 0])
    difference() {
        cube([100, 70, 3], center = true);
        translate([44, 2.5, 0])
            cube([12, 25, 3], center = true);
        translate([-44, 2.5, 0])
            cube([12, 25, 3], center = true);
    }
    translate([0, -36.5, -(48.5-2.8673)])
        rotate([90, 0, 0])
            difference() {
                union() {
                    cube([40, 60, 3], center = true);
                    translate([0, -30, 0])
                        cylinder(h = 3, d = 40, center = true);
                    translate([-20, 30, -1.5])
                    intersection() {
                        cube([40, 66, 3]);
                        rotate_extrude(angle = 41.4)
                            square([60, 3]);
                    }
                }
                translate([0, -15, 0])
                union() {
                    cube([10, 30, 3], center = true);
                    translate([0, -15, 0])
                        cylinder(h = 3, d = 20, center = true);
                    translate([0, 15, 0])
                        cylinder(h = 3, d = 10, center = true);
                }
            }
}

