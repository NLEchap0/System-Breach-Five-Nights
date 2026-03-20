gpu_set_scissor(box_x, box_y, box_w, box_h);

var base_y = box_y - scroll_y;
var section_y = base_y;

// --- DISEGNO DEL TITOLO ---
draw_set_font(global.fnt_titolo); // Imposta il font
draw_text(box_x, section_y, anim_name[page]);

// Calcoliamo l'altezza del titolo per distanziare la descrizione
var altezza_titolo = string_height(anim_name[page]);

// --- DISEGNO DELLA DESCRIZIONE ---
testoGrande = "";
draw_set_font(global.fnt_normale); // Torna al font
draw_text_ext(box_x, section_y + altezza_titolo + 20, anim_desc[page], -1, 600); 
	
switch(page){
	case 0:
		var scala_x = 0.2; 
		var scala_y = 0.2;
		draw_sprite_ext(anim_sprite[page], 0, box_x + 500, section_y, scala_x, scala_y, 0, c_white, 1);
		break;
	case 1:
		var scala_x = 0.11; 
		var scala_y = 0.11;
		draw_sprite_ext(anim_sprite[page], 0, box_x + 610, section_y, scala_x, scala_y, 0, c_white, 1);
		break;
	case 2:
		var scala_x = 0.17; 
		var scala_y = 0.17;
		draw_sprite_ext(anim_sprite[page], 0, box_x + 666, section_y, scala_x, scala_y, 0, c_white, 1);
		break;
}

// --- DISEGNO DEL TITOLO: Comportamento ---
draw_set_font(global.fnt_sub_titolo); // Imposta il font
draw_text(box_x, section_y + 300, "Comportamento");

// --- DISEGNO DEL TESTO: Comportamento ---
draw_set_font(global.fnt_normale); // Imposta il font
draw_text_ext(box_x, section_y + 360, anim_comportamento[page], -1, 800);

// --- DISEGNO DEL TITOLO: Attacco ---
draw_set_font(global.fnt_sub_titolo); // Imposta il font
draw_text(box_x, section_y + 470, "Attacco");

// --- DISEGNO DEL TESTO: Attacco ---
draw_set_font(global.fnt_normale); // Imposta il font
draw_text_ext(box_x, section_y + 530, anim_attacco[page], -1, 800);

// --- DISEGNO DEL TITOLO: Difesa ---
draw_set_font(global.fnt_sub_titolo); // Imposta il font
draw_text(box_x, section_y + 640, "Difesa");

// --- DISEGNO DEL TESTO: Difesa ---
draw_set_font(global.fnt_normale); // Imposta il font
draw_text_ext(box_x, section_y + 700, anim_difesa[page], -1, 800);

gpu_set_scissor(0, 0, display_get_width(), display_get_height());