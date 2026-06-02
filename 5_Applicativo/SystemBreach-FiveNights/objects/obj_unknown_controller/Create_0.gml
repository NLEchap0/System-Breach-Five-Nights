if (instance_number(obj_unknown_controller) > 1) {
    instance_destroy();
    exit;
}

attivaUnknownRandom = function() {
	
    if(global.unknownStordito) return;
	
    var r = irandom_range(1, 50);
    if(r <= global.aggressivitaUnknown){
        global.unknownAttivo = true;
		global.posizioneUnknown = 31;
		time_source_stop(controllo_attivazione);
        show_debug_message("UNKNOWN: Barra attivata (scarica iniziata)");
    }
}

attivaUnknown = function() {
	global.unknownAttivo = true;
	global.posizioneUnknown = 31;
	time_source_stop(controllo_attivazione);
    show_debug_message("UNKNOWN: Barra attivata (scarica iniziata");
}

scendiBarra = function() {
    if(global.unknownAttivo){
        if(global.barraUnknown > 0){
            global.barraUnknown -= global.velocitaBarra;
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
            avvio_attacco = time_source_create(time_source_game, irandom_range(global.tempoMinimo, global.tempoMassimo), time_source_units_seconds, attacco, [], -1);
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
	with(obj_Valz_controller){
		time_source_pause(controllo_posizione);
	}
	
	global.posizioneUnknown = -1;
	
	var audio = irandom_range(1, 3);
	
	switch(audio){
		case 1: audio_play_sound(unknown1, 1, false); break;
		case 2: audio_play_sound(unknown2, 1, false); break;
		case 3: audio_play_sound(unknown3, 1, false); break;
	}

	verifica_attacco = time_source_create(time_source_game, 7, time_source_units_seconds, risultatoAttacco, [], 1);
	time_source_start(verifica_attacco)
    
}

risultatoAttacco = function(){
	if(!global.mascheraAttiva){
        show_debug_message("UNKNOWN: ATTACCO - maschera assente");
        global.ucciso = 2;
        room_goto(rm_ufficio);
    }else{
        show_debug_message("UNKNOWN: Attacco fallito - maschera indossata");
        global.posizioneUnknown = -1;
		time_source_reconfigure(avvio_attacco, irandom_range(global.tempoMinimo, global.tempoMassimo), time_source_units_seconds, attacco, [], -1);
		time_source_start(controllo_movimento);
		time_source_start(avvio_attacco);
		with(obj_Valz_controller){
			time_source_resume(controllo_posizione);
		}
    }
}

ripristino = function(){
	global.unknownStordito = false
	time_source_start(controllo_attivazione);
}


shock = function() {
	if(!global.unknownAttivo){
		global.scossaCarica = false;
		attivaUnknown();
	}
    else if(global.unknownAttivo && global.barraUnknown > 50){
		audio_play_sound(scossa_suono, 1, false);
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

controllo_attivazione = time_source_create(time_source_game, 3, time_source_units_seconds, attivaUnknownRandom, [], -1);
time_source_start(controllo_attivazione);

controllo_barra = time_source_create(time_source_game, 0.05, time_source_units_seconds, scendiBarra, [], -1);
time_source_start(controllo_barra);


