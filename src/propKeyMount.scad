

length=48;
diam=14.2;
width=63.4;
barThick=5;
wholesDist=52;
margin=5;

baseTh=1;

difference() {
    cube([length+2*margin, 10+margin,baseTh]);
    translate([margin, margin/2, -0.1]) cube([length, 10,baseTh+0.2]);
}

translate([0,margin/2, 0]) Stand();
translate([length+2*margin,10+margin/2, 0]) rotate([0,0,180]) Stand();

module Stand(){
    difference() {
        diam=10;
        cube([margin, diam, diam]);
        translate ([0, baseTh, 0]) cube([margin-baseTh, diam-2*baseTh, diam+0.1]);
        rotate([0,33,0]) translate ([-2*margin,-0.1,0]) cube([2*margin, 2*diam, 2*diam]);
    }
    translate([margin-baseTh, 5, diam/2]) rotate([0,90,0]) {
        cylinder(h=baseTh, d=10);
        translate([0,0,baseTh])cylinder(h=0.7, d1=10, d2=8);
    };
}