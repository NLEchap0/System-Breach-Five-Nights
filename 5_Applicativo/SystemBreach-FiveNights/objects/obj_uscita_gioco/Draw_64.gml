if (show_popup) {
    // 1. BLINDA FONT E COLORE INIZIALE
    draw_set_font(-1); 
    draw_set_color(c_white); 
    
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    // Sfondo scuro semi-trasparente
    draw_set_color(c_black);
    draw_set_alpha(0.6);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    
    // Finestra di Popup (Centro Schermo)
    var box_w = 400;
    var box_h = 200;
    var box_x = (gui_w - box_w) / 2;
    var box_y = (gui_h - box_h) / 2;
    
    draw_set_alpha(1.0);
    
    // COLORE GRIGIO MOLTO PIÙ SCURO (RGB: 25, 25, 25)
    draw_set_color(make_color_rgb(25, 25, 25)); 
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);
    
    // Bordo della finestra (Grigio chiaro per staccare dallo sfondo scuro)
    draw_set_color(c_gray);
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, true);
    
    // Testo principale della domanda
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(gui_w / 2, box_y + 50, "Sei sicuro di voler uscire?");
    
    // Pulsanti
    var btn_si_x1 = gui_w / 2 - 120;
    var btn_si_y1 = box_y + 110;
    var btn_si_x2 = gui_w / 2 - 20;
    var btn_si_y2 = box_y + 160;
    
    var btn_no_x1 = gui_w / 2 + 20;
    var btn_no_y1 = box_y + 110;
    var btn_no_x2 = gui_w / 2 + 120;
    var btn_no_y2 = box_y + 160;
    
    // Leggiamo il clic specifico prima di manipolazioni globali
    var mouse_pressed = mouse_check_button_pressed(mb_left);
    
    // Gestione SI
    if (mx >= btn_si_x1 && mx <= btn_si_x2 && my >= btn_si_y1 && my <= btn_si_y2) {
        draw_set_color(c_red); // EFFETTO HOVER ROSSO
        if (mouse_pressed) game_end();
    } else {
        draw_set_color(c_white); 
    }
    draw_rectangle(btn_si_x1, btn_si_y1, btn_si_x2, btn_si_y2, true);
    draw_text((btn_si_x1 + btn_si_x2) / 2, (btn_si_y1 + btn_si_y2) / 2, "SI");
    
   // Gestione NO
    if (mx >= btn_no_x1 && mx <= btn_no_x2 && my >= btn_no_y1 && my <= btn_no_y2) {
        draw_set_color(c_red); // EFFETTO HOVER ROSSO
        if (mouse_pressed) {
            show_popup = false;
            
            // CONDIZIONE CRUCIALE: Riattiva tutte le istanze del gioco al momento della chiusura
            instance_activate_all(); 
            
            io_clear(); 
        }
    } else {
        draw_set_color(c_white); 
    }
    draw_rectangle(btn_no_x1, btn_no_y1, btn_no_x2, btn_no_y2, true);
    draw_text((btn_no_x1 + btn_no_x2) / 2, (btn_no_y1 + btn_no_y2) / 2, "NO");
    
    // 2. RESET FINALE
    draw_set_color(c_white); 
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}