unknownAggressivita = 30;

attivaUnknown = function() {
    if(global.unknownStordito) return;
	
    var r = irandom_range(1, 50);
    if(r <= unknownAggressivita){
        global.unknownAttivo = true;
        show_debug_message("UNKNOWN: Barra attivata (scarica iniziata)");
    }
}

scendiBarra = function() {
    if(global.unknownAttivo){
        if(global.barraUnknown > 0){
            global.barraUnknown -= global.VelocitaBarra;
        }
        if(global.barraUnknown <= 0 && !global.unknownMovimento){
            global.unknownMovimento = true;
            global.unknownAttivo = false;
            show_debug_message("UNKNOWN: Barra sotto 50% - movimento iniziato");
            avviaAttaccoRandom();
        }
    }
}

movimento = function() {
    if(!inGioco()) return;
    if(global.unknownMovimento){
        var posPrec = global.posizioneUnknown;
        global.posizioneUnknown = irandom(3);
        show_debug_message("UNKNOWN: Movimento " + string(posPrec) + " -> " + string(global.posizioneUnknown));
    }
}

avviaAttaccoRandom = function() {
    if(global.unknownMovimento){
        var delay = irandom_range(10, 25);
        attacco_timer = time_source_create(time_source_game, delay, time_source_units_seconds, attaccaOra, [], 1);
        time_source_start(attacco_timer);
        show_debug_message("UNKNOWN: Timer attacco random (" + string(delay) + "s)");
    }
}

attaccaOra = function() {
    if(!global.mascheraActive){
        show_debug_message("UNKNOWN: ATTACCO - maschera assente");
        global.ucciso = 2;
        room_goto(rm_ufficio);
    }else{
        show_debug_message("UNKNOWN: Attacco fallito - maschera indossata, ritorna in cella");
        global.posizioneUnknown = 0;
        global.barraUnknown = 100;
        global.unknownMovimento = false;
        global.unknownAttivo = false;
    }
}

ripristino = function(){
	global.unknownStordito = false
}

shock = function() {
    if(global.unknownAttivo && global.barraUnknown > 50){
        global.barraUnknown = 100;
        global.unknownAttivo = false;
		global.unknownStordito = true;
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

controllo_movimento = time_source_create(time_source_game, 8, time_source_units_seconds, movimento, [], -1);
time_source_start(controllo_movimento);
