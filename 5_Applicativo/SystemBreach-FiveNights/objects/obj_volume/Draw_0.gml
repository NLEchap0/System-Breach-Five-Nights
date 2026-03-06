draw_rectangle(x, y, x + bar_width, y + 20, false);

var knob_x = x + (volume * bar_width);

draw_rectangle(knob_x - 5, y - 5, knob_x + 5, y + 25, false);