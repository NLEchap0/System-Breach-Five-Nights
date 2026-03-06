draw_rectangle(x+10, y+8, x + bar_width, y + 30, false);

var knob_x = x + 10 + (volume * (bar_width-10));

draw_rectangle(knob_x , y - 5, knob_x + 8, y + 45, false);