/*if(video_aperto){
	var _video_data = video_draw();
	if (_video_data[0] == 0) {
		var _surf = _video_data[1];
		if (surface_exists(_surf)) {
            
            // --- CONFIGURAZIONE MARGINE ---
            // Scegli di quanti pixel totali il video deve essere PIÙ GRANDE dello schermo.
            // Esempio: 200 significa 100 pixel extra a sinistra e 100 a destra.
            var _margine_pixel = 90; 
            // -------------------------------

            // 1. Otteniamo la dimensione attuale della visuale (Camera)
            var _cam_w = camera_get_view_width(view_camera[0]);
            var _cam_h = camera_get_view_height(view_camera[0]);
            
            // 2. Calcoliamo la dimensione DESIDERATA (Camera + Margine)
            var _w_desiderata = _cam_w + _margine_pixel;
            var _h_desiderata = _cam_h + _margine_pixel; // Aggiungiamo margine anche in altezza per mantenere le proporzioni

            // 3. Calcoliamo la scala rapportando la dimensione desiderata alla superficie del video
            // Usiamo 'max' per assicurarci che copra entrambe le dimensioni se il video ha proporzioni diverse
            var _s_w = _w_desiderata / surface_get_width(_surf);
            var _s_h = _h_desiderata / surface_get_height(_surf);
            var _scala_finale = max(_s_w, _s_h); // Scegliamo la scala maggiore per coprire tutto

            // 4. Calcoliamo la posizione per CENTRARE il video rispetto alla camera
            // (La coordinate della camera + la metà dello schermo) - la metà del video scalato
            var _final_w = surface_get_width(_surf) * _scala_finale;
            var _final_h = surface_get_height(_surf) * _scala_finale;
            
            var _cam_x = camera_get_view_x(view_camera[0]);
            var _cam_y = camera_get_view_y(view_camera[0]);
            
            var _draw_x = (_cam_x + (_cam_w / 2)) - (_final_w / 2);
            var _draw_y = (_cam_y + (_cam_h / 2)) - (_final_h / 2);

            // 5. DISEGNO con Shader
            shader_set(shdr_green_screen);
            // Disegniamo con la scala calcolata e la posizione centrata
            draw_surface_ext(_surf, _draw_x, _draw_y, _scala_finale, _scala_finale, 0, c_white, 1);
            shader_reset();
        }
	}
}*/