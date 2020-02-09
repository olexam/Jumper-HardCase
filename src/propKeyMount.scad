

length=48;
diam=14.2;
width=63.4;
barThick=5;
margin=5;

baseTh=1;

difference() {
    cube([length+2*margin, 10+margin,baseTh]);
    translate([margin, margin/2, -0.1]) cube([length, 10,baseTh+0.2]);
}

translate([margin, margin/2, 0]) Stand();
translate([length+margin,10+margin/2, 0]) rotate([0,0,180]) Stand();

module Stand(){
    diam=10;
    thickness = 3;
    outst=0.4;
    translate([-thickness, 0,0]) {
        cube([thickness, diam, diam/2]);
        translate([0, 5, diam/2]) rotate([0,90,0]) {
            cylinder(h=thickness , d=diam);
            translate([0,0,thickness])cylinder(h=outst, d1=diam, d2=diam-thickness);
        };
    }
}