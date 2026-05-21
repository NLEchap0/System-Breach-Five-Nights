function reset(){
    if(!global.lock){
		global.firewall2 = false;
		global.firewall1 = false;

		if(!global.mascheraActive){
			with (obj_ufficio_controller) {
				aggiorna_layer_fw();
			}
		}
	}
}
with(obj_ufficio_controller){
	if(!global.firewall1 && !global.firewall2 && !global.mascheraActive && !global.lock){
		
		audio_play_sound(click, 1, false);
		
		global.firewall2 = true;
		global.firewall1 = undefined;
		
		aggiorna_layer_fw();
		ricaricaFw = time_source_create(time_source_game, 10, time_source_units_seconds, reset, [], 1);
		time_source_start(ricaricaFw);
	}	
}
