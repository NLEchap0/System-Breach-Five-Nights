if (instance_number(obj_ora) > 1) {
    instance_destroy();
    exit;
}

ora = 12;
potenziamento = 0;

aggiorna_ora = function(){
	if(potenziamento < 4){
		global.aggressivitaValZ += global.potenziamento;
		global.aggressivitaUnknown += global.potenziamento;
		global.tempoMassimo -= global.riduzioneTempoMassimo;
		potenziamento += 1;
	}
    if (ora == 12) {
        ora = 1;
    } else if(ora > 0 && ora < 5) {
		ora++;
	}else {
        video_close();
		alarm[0] = 2;
		global.vittoria = true;
    }
}

controllo_ora = time_source_create(time_source_game, 60, time_source_units_seconds, aggiorna_ora, [], 6)
time_source_start(controllo_ora);