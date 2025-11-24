// distanziali Ruthex M2.5
// vedi
// https://www.3djake.it/ruthex/inserto-filettato-m25-70-pezzi?sai=15205
// Novembre 2025

// distanziale top
phi_t = 2.85;
h_t = 2.5;
// distanziale bottom
phi_b = 4+1.6*2;
h_b = 7;
// foro per ruthex M2.5
phi_h = 4;
h_h = 5.7;

difference() {
    union () {
        translate([0,0,0])
            linear_extrude(height=h_b)
            circle(d=phi_b,$fn=50);
        translate([0,0,h_b])
            linear_extrude(height=h_t)
            circle(d=phi_t,$fn=50);
    }
    translate([0,0,0])
        linear_extrude(height=h_h)
        circle(d=phi_h,$fn=50);
}


