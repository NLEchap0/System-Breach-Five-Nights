with(obj_manual_controller)
{
	scroll_y = 0;
	page += 1;
	page = clamp(page, 0, 2);
	
	aggiorna_pagina();
}