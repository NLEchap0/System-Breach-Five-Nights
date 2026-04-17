velocita = global.VelocitaScaricamento



abbasso = function(){
	
		if(global.carica >=0&& global.caricamento==false){
			global.carica -= velocita;
			
		}
		else{
			global.lock = true;
		}
}


controllo_posizione = time_source_create(time_source_game, 0.05, time_source_units_seconds, abbasso, [], -1); // -1 significa che si ripete all'infinito

time_source_start(controllo_posizione);