unknownAggressivita = 30;

attivaUnknown = function() {
    if(global.unknownStordito) return;
	
    var r = irandom_range(1, 50);
    if(r <= unknownAggressivita){
        global.unknownAttivo = true;
		global.posizioneUnknown = 31;
        show_debug_message("UNKNOWN: Barra attivata (scarica iniziata)");
    }
}

scendiBarra = function() {
    if(global.unknownAttivo){
        if(global.barraUnknown > 0){
            global.barraUnknown -= global.VelocitaBarra;
        }
        else{
            global.unknownMovimento = true;
            global.unknownAttivo = false;
			global.posizioneUnknown = -1;
			time_source_destroy(controllo_attivazione);
			time_source_destroy(controllo_barra);
			controllo_movimento = time_source_create(time_source_game, 4, time_source_units_seconds, movimento, [], -1);
			time_source_start(controllo_movimento);
            show_debug_message("UNKNOWN:movimento iniziato");
            avvio_attacco = time_source_create(time_source_game, irandom_range(global.minTime, global.maxTime), time_source_units_seconds, attacco, [], -1);
			time_source_start(avvio_attacco);
        }
    }
}

movimento = function() {
	var stanza_scelta = irandom_range(1, 5);
	switch(stanza_scelta){
		case 3: global.posizioneUnknown = 41; break;
		case 4: global.posizioneUnknown = 51; break;
		default: global.posizioneUnknown = -1; break;
	}
    show_debug_message("UNKNOWN: Movimento ");
}

//finire attacco
attacco = function() {
	time_source_stop(controllo_movimento);
	time_source_stop(avvio_attacco);
    if(!global.mascheraActive){
        show_debug_message("UNKNOWN: ATTACCO - maschera assente");
        global.ucciso = 2;
        room_goto(rm_ufficio);
    }else{
        show_debug_message("UNKNOWN: Attacco fallito - maschera indossata");
        global.posizioneUnknown = -1;
		time_source_reset(controllo_movimento);
		time_source_reset(avvio_attacco);
		time_source_start(controllo_movimento);
		time_source_start(avvio_attacco);
    }
}

ripristino = function(){
	global.unknownStordito = false
}

//implementare attivazione unkown se shock si avvia quando è disattivato
shock = function() {
    if(global.unknownAttivo && global.barraUnknown > 50){
        global.barraUnknown = 100;
        global.unknownAttivo = false;
		global.unknownStordito = true;
		global.posizioneUnknown = -1;
		global.scossaCarica = false;
		ripristinoUnknown = time_source_create(time_source_game, 8, time_source_units_seconds, ripristino, [], 1)
        time_source_start(ripristinoUnknown);
		show_debug_message("UNKNOWN: Scossa data")
    }
}

resetUnknown = function() {
    show_debug_message("UNKNOWN: Reset totale");
    global.posizioneUnknown = 0;
    global.barraUnknown = 100;
    global.unknownAttivo = false;
    global.unknownMovimento = false;
    shockCooldown = 0;
}

controllo_attivazione = time_source_create(time_source_game, 3, time_source_units_seconds, attivaUnknown, [], -1);
time_source_start(controllo_attivazione);

controllo_barra = time_source_create(time_source_game, 0.05, time_source_units_seconds, scendiBarra, [], -1);
time_source_start(controllo_barra);


