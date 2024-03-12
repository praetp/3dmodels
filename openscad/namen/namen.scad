
// Set the initial viewport parameters
$vpr = [90, 0, 0];
$vpt = [50, 0, 0];
$vpd = 344;

rotate([90, 0, 0]) {
    difference() {
        cube([90, 3, 40]);
     translate([11, 6, 2]) { 
            translate([0, 0, 10]) t("COLIN", s = 16, spacing = 1);
    //        translate([0, 0, 4])   t("OLIVIA" , s = 8, spacing = 1);
    //        translate([0, 0, -2])   t("保罗", s = 8, spacing = 1,     font="Noto Serif CJK SC");
        } 
    }
}

translate([0, 50, 0]) { 
rotate([90, 0, 0]) {
    difference() {
        cube([90, 3, 40]);
     translate([11, 6, 2]) { 
//            translate([0, 0, 10]) t("COLIN", s = 16, spacing = 1);
            translate([0, 0, 10])   t("OLIVIA" , s = 16, spacing = 1);
    //        translate([0, 0, -2])   t("保罗", s = 8, spacing = 1,     font="Noto Serif CJK SC");
        } 
    }
}
}





// Helper to create 3D text with correct font and orientation
module t(t, s = 18, style = ":style=Bold", spacing = 1, font = "Liberation Sans") {
  rotate([90, 0, 0])
    linear_extrude(height = 10)
      text(t, size = s,
           spacing=spacing,
           font=font,
           $fn = 16);
}

// Color helpers
module green() color([157/255,203/255,81/255]) children();
module corn() color([249/255,210/255,44/255]) children();
module black() color([0, 0, 0]) children();

echo(version=version());
// Written in 2014 by Torsten Paul <Torsten.Paul@gmx.de>
//
// To the extent possible under law, the author(s) have dedicated all
// copyright and related and neighboring rights to this software to the
// public domain worldwide. This software is distributed without any
// warranty.
//
// You should have received a copy of the CC0 Public Domain
// Dedication along with this software.
// If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.
