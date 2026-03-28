with(obj_ufficio_controller){
	if(!global.firewall1 && !global.firewall2){
		function reset(){
			global.firewall1 = false;
			global.firewall2 = false;
			obj_ufficio_controller.aggiorna_layer_fw();
		}
		global.firewall1 = true;
		global.firewall2 = undefined;
		aggiorna_layer_fw();
		ricaricaFw = time_source_create(time_source_game, 15, time_source_units_seconds, reset, [], 1);
		time_source_start(ricaricaFw);
	}	
}

