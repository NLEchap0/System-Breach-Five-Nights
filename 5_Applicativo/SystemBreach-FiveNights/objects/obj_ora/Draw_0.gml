// Imposta il font FNAF (devi averlo importato come fnaf_font)
draw_set_font(fnaf_font);

// Imposta allineamento
draw_set_halign(fa_left);
draw_set_valign(fa_top);


// Disegna numero sopra con colore rosso horror
draw_set_color(c_white);
draw_text(1207, 5, string(current_number)+" AM");
draw_text(1187, 45, "NIGHT "+string(global.night));