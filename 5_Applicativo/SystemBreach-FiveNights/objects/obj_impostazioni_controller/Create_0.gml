active = 1
//aggiona il manuale impostando l'asset corretto a visibile
function aggiorna_checkbox()
{
    layer_set_visible("Assets_backgroundMenuImpostazioniOff", active == 0);
	layer_set_visible("Assets_backgroundMenuImpostazioniOn", active == 1);
	if (active = 0) {
	    window_set_fullscreen(false);
	} else {
	    window_set_fullscreen(true);
	}

}

aggiorna_checkbox();