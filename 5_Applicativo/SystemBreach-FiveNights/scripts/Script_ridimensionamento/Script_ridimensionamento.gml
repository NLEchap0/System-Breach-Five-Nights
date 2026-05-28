function ridimensiona(){
	if(global.attivo == 1){
			show_debug_message("test2")
			window_set_fullscreen(true);
			var _monitor_w = display_get_width();
			var _monitor_h = display_get_height();
			surface_resize(application_surface, _monitor_w, _monitor_h);
			view_set_wport(0, _monitor_w);
			view_set_hport(0, _monitor_h);
		}
		else{
			show_debug_message(global.attivo);
	        window_set_fullscreen(false);
		
	        // 1. Torniamo in finestra: rimettiamo la finestra alla dimensione base
	        // (Sostituisci 1280x720 con la risoluzione nativa della tua finestra)
	        var _base_w = 1280;
	        var _base_h = 720;
        
	        window_set_size(_base_w, _base_h);
	        surface_resize(application_surface, _base_w, _base_h);
		}
}
