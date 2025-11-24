// Mini-r, novembre 2025
// piastra di collegamento

// tutte le misure sono in millimetri [mm]
// approssimate al mezzo millimetro

// piastra
L = 175.0;  // lato lungo
H = 70.0;   // lato corto
w = 2.5;    // spessore

// fori
phi = 3;
h_foro = w;
Ix = 140.0; // interasse fori lato lungo
Iy = 30.0;  // interasse fori lato corto
Dx = 7.5;       // distanza dal bordo dx
Dy = (H-Iy)/2.; // distanza bordo alto/basso (centrata in altezza)
// coordinate dei fori (H1, H2, ..)
H1_x = L-Dx;
H1_y = Dy;
H2_x = H1_x;
H2_y = H-Dy;
H3_x = L-Dx-Ix;
H3_y = H2_y;
H4_x = H3_x;
H4_y = H1_y;
// coordinate fori piastra alta
H1pa_x = H1_x;
H1pa_y = 8;
H2pa_x = H1_x;
H2pa_y = H-8;;
H3pa_x = H1pa_x-70;
H3pa_y = H2pa_y;
H4pa_x = H3pa_x;
H4pa_y = H1pa_y;
// coordinate primo doubler (giulia -> G)
phi_d = 2.54;   // diametro fori doubler 0.1''
Id_L = 45.7;    // interasse Doubler lato lungo
Id_l = 41.9;    // interasse Doubler lato corto
G1_x = H1_x;
G1_y = (H-Id_l)/2.;
G2_x = H1_x;
G2_y = G1_y+Id_l;
G3_x = G1_x-Id_L;
G3_y = G2_y;
G4_x = G3_x;
G4_y = G1_y;
// coordinate A (secondo doubler, aldebaran)
// ..
// coordinate X (terzo doubler, centralina)
// ..
// coordinate Y (sensore PM2.5)
// ..


difference() {
    // piastra
    translate([0,0,0])
        linear_extrude(height=w)
            square(size=[L,H]);
    // fori connessione piastra–minir
    translate([H1_x,H1_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi,$fn=50);
    translate([H2_x,H2_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi,$fn=50);
    translate([H3_x,H3_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi,$fn=50);
    translate([H4_x,H4_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi,$fn=50);
    // piastra alta
    translate([H1pa_x,H1pa_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi,$fn=50);
    translate([H2pa_x,H2pa_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi,$fn=50);
    translate([H3pa_x,H3pa_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi,$fn=50);
    translate([H4pa_x,H4pa_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi,$fn=50);
    // G (primo doubler, motori)
    translate([G1_x,G1_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi_d,$fn=50);
    translate([G2_x,G2_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi_d,$fn=50);
    translate([G3_x,G3_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi_d,$fn=50);
    translate([G4_x,G4_y,0])
        linear_extrude(height=h_foro)
            circle(d=phi_d,$fn=50);
    // A (secondo doubler, aldebaran)
    // ..
    // X (terzo doubler, centralina)
    // ..
    // Y (sensore PM2.5)
    // ..
}


