
length=66.5;
diam=18.1;
holderWidth=7;
standWidth=10;
baseThick=1;
wallThick=2;

margin=2;

difference() {
    cube([diam + 2* margin, length + 2 * margin, baseThick], true);
    cube([2*diam/3 , length, baseThick], true);
}

translate([-holderWidth/2, -length/2 - wallThick, 0]) {
    cube(size=[holderWidth, wallThick, 4]);  
} 
translate([-holderWidth/2, length/2, 0]) {
    cube(size=[holderWidth, wallThick, 4]);  
} 

difference() {
    union() {
        translate([diam/2+wallThick, -standWidth/2, 0]) rotate([0, 0, 90]) {
            holder();
        }

        translate([-diam/2-wallThick, standWidth/2, 0]) rotate([0, 0, -90]) {
            holder();
        }
    }
    #translate([0, length/2, diam/2]) rotate([90,0,0]) cylinder(d=diam, h=length);
}


module holder() {
    standHeight = 5*diam/6;
    cube(size=[standWidth, wallThick, standHeight]);
    translate([0, wallThick, diam/2]) {
        cube([standWidth, 2, standHeight - diam/2]);
    }
}
