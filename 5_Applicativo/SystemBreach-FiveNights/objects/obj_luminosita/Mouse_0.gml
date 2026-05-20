luminosita = clamp((mouse_x - x + 7) / bar_width, 0, 1);
global.brightness = luminosita - 0.5;

aggiornamento_impostazioni("save_data.dat", "NotteSegretaFNAF_2026!");