with(obj_impostazioni_controller)
{
	if(active == 1)
	{
		active = 0;
		
		window_set_fullscreen(false);
		aggiorna_checkbox();
	}
	else{
		active = 1;
		window_set_fullscreen(true);
		aggiorna_checkbox();
	}
	global.active = active ;
}
audio_play_sound(click, 1, false);