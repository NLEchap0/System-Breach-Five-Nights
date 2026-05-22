if(global.scossaCarica && !global.unknownMovimento){
	
	with(obj_unknown_controller){
	    shock();
	}

	ricarica = function(){
		global.scossaCarica = true;
	}
	
	ricaricaScossa = time_source_create(time_source_game, 13.5, time_source_units_seconds, ricarica, [], 1);
	time_source_start(ricaricaScossa);
}