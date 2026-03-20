valZ = 10; // valore da 1 a 50 che definisce la aggressività dell'animatronico

movimento = function(){	
	ranInt = irandom_range(1, 50);
	show_debug_message(ranInt);
	if (ranInt <= valZ) {
        show_debug_message("mi muovo");
    }else{
		show_debug_message("rimango fermo");
	}
}

controllo_ai = time_source_create(time_source_game, 5, time_source_units_seconds, movimento, [], -1); // -1 significa che si ripete all'infinito

time_source_start(controllo_ai);