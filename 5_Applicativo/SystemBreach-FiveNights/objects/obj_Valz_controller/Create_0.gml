if (instance_number(obj_Valz_controller) > 1) {
    instance_destroy();
    exit;
}

possibilita1 = 0;
possibilita2 = 0;
count = 0;

movimento = function(){
	if(global.posizioneValz != 12 && global.posizioneValz != 22){
		ranInt = irandom_range(1, 50);
		if (ranInt <= global.aggressivitaValZ) {
			// Percorso: 6 -> 51 -> 52 -> 11/21 -> 12/22 (ufficio)
			switch(global.posizioneValz) {
				case 6:  possibilita1 = 51; possibilita2 = 0;  break;
				case 51: possibilita1 = 52; possibilita2 = 0;  break;
				case 52: possibilita1 = 11; possibilita2 = 21; break;
				case 11: possibilita1 = 12; possibilita2 = 22; break;
				case 21: possibilita1 = 22; possibilita2 = 12; break;
			}
			if(possibilita2 == 0){
				global.posizioneValz = possibilita1;
			}else{
				if(count <= 2){
					fiftyFifty = irandom_range(1, 2);
					if (fiftyFifty == 1) {
						global.posizioneValz = possibilita1;
					} else {
						global.posizioneValz = possibilita2;
					}
					count++;
				}
			}
			if(global.posizioneValz == 12 || global.posizioneValz == 22){
				checkAttacco();
			}
		}
	}else{
		count = 0;
	}
}

checkAttacco = function(){
	attacco_timer = time_source_create(time_source_game, 6, time_source_units_seconds, attacco, [], 1);
	time_source_start(attacco_timer);
}

attacco = function(){
	if((global.firewall1 == undefined && global.posizioneValz == 12)||
	(global.firewall1 == false && global.posizioneValz == 12)|| 
	(global.firewall2 == undefined && global.posizioneValz == 22)||
	(global.firewall2 == false && global.posizioneValz == 22)){
		global.ucciso = 1;
		room_goto(rm_ufficio);
	}else{
		global.posizioneValz = 6;
	}
}

controllo_posizione = time_source_create(time_source_game, 5, time_source_units_seconds, movimento, [], -1);
time_source_start(controllo_posizione);