// ora iniziale
ora = 12;

//valore che definisce i potenziamenti ricevuti dagli animatronici durante la notte
potenziamento = 0;

aggiorna_ora = function(){
	if(potenziamento < 4){
		global.aggressivitaValZ += global.potenziamento;
		global.aggressivitaUnknown += global.potenziamento;
		global.maxTime -= global.riduzioneMaxTime;
		potenziamento += 1;
	}
    if (ora == 12) {
        ora = 1;
    } else if(ora > 0 && ora < 5) {
		ora++;
	}else {
        video_close();
		alarm[0] = 1;
		global.win = true;
    }
}

controllo_ora = time_source_create(time_source_game, 1, time_source_units_seconds, aggiorna_ora, [], 6)
time_source_start(controllo_ora);