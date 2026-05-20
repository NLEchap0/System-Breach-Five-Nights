if(nomeVideoAperto == "jumpscare.mp4"){
	var result = video_draw()
	var status = result[0] // stato del video 

	if (status == 0)
	{
		var surf = result[1]; // frame del video
	    draw_surface_stretched(surf, 0, 0, room_width, room_height);
	}

	if(video_get_position() >= 6030 && video_get_position() <= 6040 && !isPaused  && global.ucciso == 1){
		video_pause();
		isPaused = true;
		ranTime = irandom_range(3, 5);
		riavvioTimer = time_source_create(time_source_game, ranTime , time_source_units_seconds, riavvio, [], 1);
		time_source_start(riavvioTimer);
	}

	if (video_get_status() == video_status_closed){
		video_close();
		isPaused = false;
		room_goto(rm_end);
	}
}else{
	var _video_data = video_draw();
    if (_video_data[0] == 0) {
        var _surf = _video_data[1];
        if (surface_exists(_surf)) {
            
            // --- CONFIGURAZIONE MARGINE ---
            var _margine_pixel = 90; 

            // 1. Otteniamo la dimensione della visuale
            var _cam_w = camera_get_view_width(view_camera[0]);
            var _cam_h = camera_get_view_height(view_camera[0]);
            
            // 2. Calcoliamo la dimensione DESIDERATA
            var _w_desiderata = _cam_w + _margine_pixel;
            var _h_desiderata = _cam_h + _margine_pixel;

            // 3. Calcoliamo la scala
            var _s_w = _w_desiderata / surface_get_width(_surf);
            var _s_h = _h_desiderata / surface_get_height(_surf);
            var _scala_finale = max(_s_w, _s_h);

            // 4. Centriamo il video rispetto alla camera
            var _final_w = surface_get_width(_surf) * _scala_finale;
            var _final_h = surface_get_height(_surf) * _scala_finale;
            
            var _cam_x = camera_get_view_x(view_camera[0]);
            var _cam_y = camera_get_view_y(view_camera[0]);
            
            var _draw_x = (_cam_x + (_cam_w / 2)) - (_final_w / 2);
            var _draw_y = (_cam_y + (_cam_h / 2)) - (_final_h / 2);

            // 5. DISEGNO con Shader
            shader_set(shdr_green_screen);
            draw_surface_ext(_surf, _draw_x, _draw_y, _scala_finale, _scala_finale, 0, c_white, 1);
            shader_reset();
        }
    }
	
	if (video_get_status() == video_status_closed){
		video_close();
		room_goto(rm_end);
	}
}