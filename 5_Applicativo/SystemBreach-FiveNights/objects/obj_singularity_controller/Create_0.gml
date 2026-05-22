if (instance_number(obj_singularity_controller) > 1) {
    instance_destroy();
    exit;
}

lock = function(){
	global.blocco=false;
	global.caricamento = false;
	global.firewall1 = false;
	global.firewall2 = false;
	with(obj_ufficio_controller){
		aggiorna_layer_fw();
	}
}

abbasso = function(){
	if(global.carica >=0 && global.caricamento == false){
		global.carica -= global.velocitaScaricamento;
	}
	if(global.carica <= 0){
		room_goto(rm_ufficio)
		global.blocco = true;
		global.carica = 100;
		global.caricamento = true;
		global.firewall1 = undefined;
		global.firewall2 = undefined;
		time_source_start(time_source_create(time_source_game, global.tempoBlocco, time_source_units_seconds, lock, [], 1))
	}
}

controllo_posizione = time_source_create(time_source_game, 0.05, time_source_units_seconds, abbasso, [], -1);
time_source_start(controllo_posizione);