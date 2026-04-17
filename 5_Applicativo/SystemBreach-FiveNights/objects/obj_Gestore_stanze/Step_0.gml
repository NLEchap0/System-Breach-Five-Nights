 switch (room) {
        case rm_ufficio_ceo:
			layer_set_visible("Assets_valz_pos6", false);
			if(global.posizioneValz==6){
				layer_set_visible("Assets_valz_pos6", true);
			}
            
			
        break;

        case rm_hacking_destra:
		
			layer_set_visible("Assets_valz_pos21", false);
			layer_set_visible("Assets_valz_pos22", false);
			if(global.posizioneValz==21){
				layer_set_visible("Assets_valz_pos21", true);
			}
			if(global.posizioneValz==22){
				layer_set_visible("Assets_valz_pos22", true);
			}
		break;
        case rm_hacking_sinistra:
			layer_set_visible("Assets_valz_pos11", false);
			layer_set_visible("Assets_valz_pos12", false);
			if(global.posizioneValz==11){
				layer_set_visible("Assets_valz_pos11", true);
			}
			if(global.posizioneValz==12){
				layer_set_visible("Assets_valz_pos12", true);
			}
			
		break;

        case rm_uffici:
			layer_set_visible("Assets_valz_pos51", false);
			layer_set_visible("Assets_valz_pos52", false);
			if(global.posizioneValz==51){
				layer_set_visible("Assets_valz_pos51", true);
			}
			if(global.posizioneValz==52){
				layer_set_visible("Assets_valz_pos52", true);
			}
		break;
	}
