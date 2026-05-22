contrasto = clamp((mouse_x - x + 7) / bar_width, 0, 1);

global.contrasto = 0.5 + contrasto * 1.5;


salvare_gioco_json_base64()