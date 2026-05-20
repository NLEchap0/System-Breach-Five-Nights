if(global.scossaCarica){
	with(obj_unknown_controller){
	    shock();
	}

	ricarica = function(){
		global.scossaCarica = true;
	}
	
	ricaricaScossa = time_source_create(time_source_game, 11, time_source_units_seconds, ricarica, [], 1);
	time_source_start(ricaricaScossa);
}