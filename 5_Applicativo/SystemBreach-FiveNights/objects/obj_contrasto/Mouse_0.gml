contrasto = clamp((mouse_x - x + 7) / bar_width, 0, 1);

global.contrast = 0.5 + contrasto * 1.5;