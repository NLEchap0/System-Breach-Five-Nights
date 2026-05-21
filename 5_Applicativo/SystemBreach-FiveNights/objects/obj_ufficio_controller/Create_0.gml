//cambio degli assets attivi in base allo stato della maschera
function layer_maschera_active()
{
	layer_set_visible("Assets_camOff", global.mascheraActive == false);
	layer_set_visible("Assets_mascheraOff", global.mascheraActive == false);
	layer_set_visible("Assets_mascheraOn", global.mascheraActive == true);
	layer_set_visible("Assets_maschera", global.mascheraActive == true);
}

//cambio dello stato dei firewall
function aggiorna_layer_fw()
{
	if(room == rm_ufficio){
		layer_set_visible("Assets_fw1Off", global.firewall1 == false);
		layer_set_visible("Assets_fw1On", global.firewall1 == true)
		layer_set_visible("Assets_fw2Off", global.firewall2 == false);
		layer_set_visible("Assets_fw2On", global.firewall2 == true);
	}
	else{
		global.waiting_for_office = true;

	}
}

layer_maschera_active();
aggiorna_layer_fw();

audio_play_sound(in_game_background_music, 1, true);