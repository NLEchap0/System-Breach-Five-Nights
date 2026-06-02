with(obj_manual_controller)
{
	audio_play_sound(suonoClick, 1, false);
	scroll_y = 0;
	page += 1;
	page = clamp(page, 0, 2);
	
	aggiorna_pagina();
}