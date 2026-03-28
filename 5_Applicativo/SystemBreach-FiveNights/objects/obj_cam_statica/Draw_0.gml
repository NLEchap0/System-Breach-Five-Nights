if(video_aperto){
	var _video_data = video_draw();
	if (_video_data[0] == 0) {
		var _surf = _video_data[1];
		if (surface_exists(_surf)) {
		    // 1. Otteniamo la larghezza e l'altezza della visuale attuale (Camera)
		    var _cam_w = camera_get_view_width(view_camera[0]);
		    var _cam_h = camera_get_view_height(view_camera[0]);
    
		    // 2. Calcoliamo la scala rapportando la camera alla superficie del video
		    var _scala_x = _cam_w / surface_get_width(_surf);
		    var _scala_y = _cam_h / surface_get_height(_surf);

		    shader_set(shdr_green_screen);
		    // Disegniamo il video alle coordinate della camera (0,0 della view)
		    draw_surface_ext(_surf, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), _scala_x, _scala_y, 0, c_white, 1);
		    shader_reset();
		}
	}
}