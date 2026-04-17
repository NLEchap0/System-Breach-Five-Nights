function reset(){
    global.firewall2 = false;
    global.firewall1 = false;

    with (obj_ufficio_controller) {
        aggiorna_layer_fw();
    }
}
with(obj_ufficio_controller){
	
	if(!global.firewall1 && !global.firewall2){
		
		global.firewall1 = true;
		global.firewall2 = undefined;
		aggiorna_layer_fw();
		ricaricaFw = time_source_create(time_source_game, 10, time_source_units_seconds, reset, [], 1);
		time_source_start(ricaricaFw);
	}	
}

