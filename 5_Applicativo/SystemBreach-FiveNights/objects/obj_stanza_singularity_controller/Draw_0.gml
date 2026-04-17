// posizione e dimensioni
var x1 = 100;
var y1 = 190;
var larghezza = 40;
var altezza = 400;

// normalizza il valore (0-1)
var percent = clamp(global.carica / 100, 0, 1);

// altezza riempimento
var fill_h = altezza * percent;

// disegna sfondo (vuoto)
draw_set_color(c_gray);
draw_rectangle(x1, y1, x1 + larghezza, y1 + altezza, false);

// disegna riempimento DAL BASSO
draw_set_color(c_white);
draw_rectangle(
    x1,
    y1 + altezza - fill_h,  // ← parte dal basso
    x1 + larghezza,
    y1 + altezza,
    false
);