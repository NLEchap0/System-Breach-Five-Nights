if(global.scossaCarica && !global.unknownMovimento){
	audio_play_sound(scossa_suono, 1, false);
	
	with(obj_unknown_controller){
	    shock();
	}

	ricarica = function(){
		global.scossaCarica = true;
	}
	
	ricaricaScossa = time_source_create(time_source_game, 15, time_source_units_seconds, ricarica, [], 1);
	time_source_start(ricaricaScossa);
}