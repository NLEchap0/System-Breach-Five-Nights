switch (room) {
		case rm_ufficio:
			if(global.blocco){
				
				layer_set_visible("Assets_telecameraSpenta",false);
				
				with(obj_ufficio_controller){
					aggiorna_layer_fw();
				}
				
			}else{
				
				layer_set_visible("Assets_telecameraSpenta", global.mascheraAttiva == false);
			}
		
		break;
		
        case rm_ufficio_ceo:
			layer_set_visible("Assets_valz_pos6", false);
			
			layer_set_visible("Assets_valz_pos6", global.posizioneValz==6);
            
        break;

        case rm_hacking_destra:
		
			layer_set_visible("Assets_valz_pos21", false);
			layer_set_visible("Assets_valz_pos22", false);
			
			layer_set_visible("Assets_valz_pos21", global.posizioneValz==21);
			layer_set_visible("Assets_valz_pos22", global.posizioneValz==22);
			
		break;
		
        case rm_hacking_sinistra:
			layer_set_visible("Assets_valz_pos11", false);
			layer_set_visible("Assets_valz_pos12", false);

			layer_set_visible("Assets_valz_pos11", global.posizioneValz==11);
			layer_set_visible("Assets_valz_pos12", global.posizioneValz==12);
			
		break;

        case rm_unknown:
			layer_set_visible("Assets_unknown", false);
			layer_set_visible("Assets_stanza_unknown_aperta", false);
			layer_set_visible("Assets_unknown", global.posizioneUnknown == 31);
			layer_set_visible("Assets_stanza_unknown_aperta", global.unknownMovimento);
			layer_set_visible("Assets_stanza_unknown", !global.unknownMovimento);
		break;

        case rm_uffici:
			layer_set_visible("Assets_valz_pos51", false);
			layer_set_visible("Assets_valz_pos52", false);
			layer_set_visible("Assets_unknown", false);
			
			layer_set_visible("Assets_valz_pos51", global.posizioneValz==51);
			layer_set_visible("Assets_valz_pos52", global.posizioneValz==52);
			
			layer_set_visible("Assets_unknown", global.posizioneUnknown == 51);
		break;

		case rm_singularity:
			layer_set_visible("Assets_unknown", false);
			layer_set_visible("Assets_unknown", global.posizioneUnknown == 41);
		break;
	}
