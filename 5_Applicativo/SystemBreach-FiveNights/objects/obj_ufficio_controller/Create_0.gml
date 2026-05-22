function layer_maschera_active()
{
	layer_set_visible("Assets_camOff", global.mascheraAttiva == false);
	layer_set_visible("Assets_mascheraOff", global.mascheraAttiva == false);
	layer_set_visible("Assets_mascheraOn", global.mascheraAttiva == true);
	layer_set_visible("Assets_maschera", global.mascheraAttiva == true);
}

function aggiorna_layer_fw()
{
	if(room == rm_ufficio){
		layer_set_visible("Assets_fw1Off", global.firewall1 == false);
		layer_set_visible("Assets_fw1On", global.firewall1 == true)
		layer_set_visible("Assets_fw2Off", global.firewall2 == false);
		layer_set_visible("Assets_fw2On", global.firewall2 == true);
	}
	else{
		global.inAttesaUfficio = true;
	}
}

layer_maschera_active();
aggiorna_layer_fw();

audio_play_sound(musicaGiocoFondo, 1, true);