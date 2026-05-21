video = video_open("menuAnimato.mp4");
video_enable_loop(true);

if(!audio_is_playing(backgroundAudio)){
	audio_play_sound(backgroundAudio, 1, true);
}


show_debug_message("test1")
with(obj_salvataggio){
	show_debug_message("test2")
	if(global.active == 1){
	    window_set_fullscreen(true);
	    var _monitor_w = display_get_width();
	    var _monitor_h = display_get_height();
	    surface_resize(application_surface, _monitor_w, _monitor_h);
	    view_set_wport(0, _monitor_w);
	    view_set_hport(0, _monitor_h);
	}
}