// Se il popup di uscita è aperto, blocchiamo l'interazione e il disegno
if (instance_exists(obj_uscita_gioco)) {
    if (obj_uscita_gioco.show_popup) exit;
}

// 1. BLINDA FONT E COLORE BASE INIZIALE
draw_set_font(-1);
draw_set_color(c_white);
draw_set_alpha(1.0); // Forza l'alfa iniziale a 1.0

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// 2. Calcola la posizione (Basso Centrale, più alto)
var x1 = (gui_w - btn_w) / 2;
var y1 = gui_h - btn_h - margin_from_bottom;
var x2 = x1 + btn_w;
var y2 = y1 + btn_h;

// Allineamento testo per il bottone
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// 3. DISEGNO DELLO SFONDO SEMI-OPACO (Nero al 60%)
draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(x1, y1, x2, y2, false); // false = riempie il rettangolo

// Ripristiniamo l'alfa al massimo per il testo e il bordo
draw_set_alpha(1.0);

// 4. CONTROLLO HOVER E CLIC
if (mx >= x1 && mx <= x2 && my >= y1 && my <= y2) {
    draw_set_color(c_red); // Bordo e testo diventano rossi in hover
    
    if (mouse_check_button_pressed(mb_left)) {		
        // Impostiamo i valori di default:
	    global.brightness = -0.05;
	    global.contrast   = 1;
	    global.saturation = 1.1;
	    global.volume     = 0.6;
	    global.active     = 1;
	    global.notte      = 1;
    
	    // Creiamo la struct con questi valori di default per salvarli subito
	    var _impostazioni_iniziali = {
	        brightness : global.brightness,
	        contrast   : global.contrast,
	        saturation : global.saturation,
	        volume     : global.volume,
	        active     : global.active,
	        notte      : global.notte
	    };
    
	    // Salviamo il file criptato, così è come nuovo
	    salvare_gioco_json_criptato(_impostazioni_iniziali, FILE_IMPOSTAZIONI, CHIAVE_SEGRETISSIMA)
		
		audio_master_gain(global.volume);
		
		room_goto(rm_menu);
    }
} else {
    draw_set_color(c_white); // Altrimenti rimangono bianchi
}

// 5. DISEGNO DEL BORDO E DEL TESTO
draw_rectangle(x1, y1, x2, y2, true); // true = solo il bordo outline
draw_text((x1 + x2) / 2, (y1 + y2) / 2, "Reset dati gioco");

// 6. RESET FINALE ASSOLUTO
draw_set_color(c_white);
draw_set_alpha(1.0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);