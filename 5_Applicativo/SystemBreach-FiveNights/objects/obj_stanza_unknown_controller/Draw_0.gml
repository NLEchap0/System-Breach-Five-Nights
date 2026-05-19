var percent = clamp(global.barraUnknown / 100, 0, 1);
var fill_h = altezza * percent;

draw_set_color(c_gray);
draw_rectangle(x1, y1, x1 + larghezza, y1 + altezza, false);

draw_set_color(colorBarra);
draw_rectangle(x1, y1 + altezza - fill_h, x1 + larghezza, y1 + altezza, false);

draw_set_color(c_red);
draw_line(x1, y1 + altezza * 0.5, x1 + larghezza, y1 + altezza * 0.5);

if(timerColore > 0){
    timerColore--;
    if(timerColore == 0){
        colorBarra = c_white;
    }
}

if(mouse_check_button_pressed(mb_left)){
    if(mouse_x >= x1 && mouse_x <= x1 + larghezza && mouse_y >= y1 && mouse_y <= y1 + altezza){
        with(obj_unknown_controller){
            shock();
        }
        colorBarra = make_colour_rgb(30, 200, 150);
        timerColore = 15;
    }
}
