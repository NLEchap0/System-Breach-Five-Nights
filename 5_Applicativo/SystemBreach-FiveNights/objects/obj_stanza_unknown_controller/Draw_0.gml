var percent = clamp(global.barraUnknown / 100, 0, 1);
var fill_h = altezza * percent;

draw_set_color(c_gray);
draw_rectangle(x1, y1, x1 + larghezza, y1 + altezza, false);

draw_set_color(colorBarra);
draw_rectangle(x1, y1 + altezza - fill_h, x1 + larghezza, y1 + altezza, false);

draw_set_color(c_red);
draw_line(x1, y1 + altezza * 0.5, x1 + larghezza, y1 + altezza * 0.5);


