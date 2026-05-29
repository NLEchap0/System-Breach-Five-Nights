with(obj_manual_controller){
	if(page == 2){
		draw();
	}
}

function draw(){
	// 1. BLINDA FONT E COLORE BASE INIZIALE
	draw_set_font(-1);
	draw_set_color(c_white);
	draw_set_alpha(1.0); // Forza l'alfa iniziale a 1.0

	var gui_w = display_get_gui_width();
	var gui_h = display_get_gui_height();

	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);

	// Dimensioni adattive
	var btn_w = gui_w * obj_button_diarioUK.btn_w_ratio;
	var btn_h = gui_h * obj_button_diarioUK.btn_h_ratio;

	// Margine dal basso adattivo
	var margin_from_bottom = gui_h * obj_button_diarioUK.margin_bottom_ratio;
	var margin_from_side = gui_w * obj_button_diarioUK.margin_side_ratio;

	// 2. Calcola la posizione (Basso Centrale, più alto)
	var x1 = ((gui_w - btn_w) / 2) + margin_from_side;
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
			var file_sorgente = "top-secretPDF.pdf";

			if (file_exists(file_sorgente)) 
			{
			    // 1. COPIA IL PDF NEI DOWNLOAD (Come richiesto)
			    var percorso_utente = environment_get_variable("USERPROFILE");
			    var cartella_download = percorso_utente + "\\Downloads\\";
			    var percorso_finale = cartella_download + "top-secretPDF.pdf";
			    file_copy(file_sorgente, percorso_finale);
        
			    // 2. APRIAMO IL PDF SENZA ESTENSIONI E SENZA CRASH DI PROTOCOLLO
			    // Leggiamo il PDF originale e lo convertiamo in un buffer
			    var buff = buffer_load(file_sorgente);
			    var pdf_base64 = buffer_base64_encode(buff, 0, buffer_get_size(buff));
			    buffer_delete(buff);
        
			    // 3. Creiamo un file HTML temporaneo nella cartella di gioco
			    var nome_html = "visualizza_diarioUN.html";
			    var file_html = file_text_open_write(nome_html);
        
			    // Scriviamo il codice che inganna il browser, incorporando il PDF come stringa sicura
			    file_text_write_string(file_html, "<html><body style='margin:0;'><embed width='100%' height='100%' src='data:application/pdf;base64," + pdf_base64 + "' type='application/pdf' /></body></html>");
			    file_text_close(file_html);
        
			    // 4. Lanciamo l'HTML locale. GameMaker lo accetta SEMPRE senza errori di protocollo!
			    url_open(nome_html);
			}
		}
	} else {
		draw_set_color(c_white); // Altrimenti rimangono bianchi
	}

	// 5. DISEGNO DEL BORDO E DEL TESTO
	draw_rectangle(x1, y1, x2, y2, true); // true = solo il bordo outline

	var text_scale = gui_w / 1920;

	// Limiti min/max
	text_scale = clamp(text_scale, 0.6, 1.2);

	draw_text_transformed(
		(x1 + x2) / 2,
		(y1 + y2) / 2,
		"Scarica documento TOP SECRET",
		text_scale,
		text_scale,
		0
	);

	// 6. RESET FINALE ASSOLUTO
	draw_set_color(c_white);
	draw_set_alpha(1.0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}