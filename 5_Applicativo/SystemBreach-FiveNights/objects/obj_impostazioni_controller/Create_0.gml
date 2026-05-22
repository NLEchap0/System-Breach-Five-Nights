//aggiona la checkbox impostando l'asset corretto a visibile
function aggiorna_checkbox()
{
	show_debug_message(global.attivo);
    layer_set_visible("Assets_backgroundMenuImpostazioniOff", global.attivo == 0);
	layer_set_visible("Assets_backgroundMenuImpostazioniOn", global.attivo == 1);

}

aggiorna_checkbox();