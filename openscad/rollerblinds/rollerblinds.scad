$fn=44;
cutouts = 23;
degrees_per_cutout = 360/cutouts;

include<arc.scad>

difference() {
    union() {
        difference() {
            ring();
            cutouts(); //for the balls
        }
        translate([0,0,6]) {
            ring(h=1,od=53); //widest ring
        }
        difference() {
            ring(h=37,od=34,id=27); 
            translate([0,0,1]) {
                //outer omissions
                rotate(degrees_per_cutout+15) linear_extrude(37) arc(a=55, r1=15, r2=18);
                rotate(180+degrees_per_cutout+15) linear_extrude(37) arc(a=55, r1=15, r2=18);

            }
        }     
        //outer extensions
        rotate(0) linear_extrude(37) arc(a=2, r1=16, r2=20);
        rotate(15) linear_extrude(37) arc(a=2, r1=16, r2=20);
        rotate(180) linear_extrude(37) arc(a=2, r1=16, r2=20);
        rotate(180-15) linear_extrude(37) arc(a=2, r1=16, r2=20);
        
        rotate(-60+0) linear_extrude(37) arc(a=2, r1=16, r2=20);
        rotate(-60+15) linear_extrude(37) arc(a=2, r1=16, r2=20);
        rotate(-60+180) linear_extrude(37) arc(a=2, r1=16, r2=20);
        rotate(-60+180-15) linear_extrude(37) arc(a=2, r1=16, r2=20);

    }
    translate([0,0,-1]) {
        //inner omissions for the springs
        rotate(0) linear_extrude(30) arc(a=0+degrees_per_cutout+15, r1=13, r2=16);
        rotate(7*degrees_per_cutout) linear_extrude(30) arc(a=0+degrees_per_cutout+15, r1=13, r2=16);
        
        rotate(180) linear_extrude(30) arc(a=0+degrees_per_cutout+15, r1=13, r2=16);
        rotate(180+7*degrees_per_cutout) linear_extrude(30) arc(a=0+degrees_per_cutout+15, r1=13, r2=16);

    }
}


module cutouts() {
for ( i = [1:degrees_per_cutout:360])
  rotate(i,[0,0,1]){
     translate([23,0,3]) sphere(d=5);
  }
  
}
  
 
module ring(
        h=6,
        od = 46,
        id = 27,
        de = 0.1
        ) 
{
    difference() {
        cylinder(h=h, r=od/2);
        translate([0, 0, -de])
            cylinder(h=h+2*de, r=id/2);
    }
}
