if (!global.innesco && !global.blocco || !global.innesco && global.mascheraAttiva)
{
	global.innesco = true;
	if(!global.mascheraAttiva && !global.telecameraAttiva){
		global.telecameraAttiva = true;
		audio_play_sound(suonoCambioTelecamera, 1, false);
		switch(global.telecameraCorrente){
			case 1: room_goto(rm_hacking_sinistra);  break;
			case 2: room_goto(rm_hacking_destra);     break;
			case 3: room_goto(rm_unknown);             break;
			case 4: room_goto(rm_singularity);          break;
			case 5: room_goto(rm_uffici);              break;
			case 6: room_goto(rm_ufficio_ceo);         break;
		}
	}
	else if (global.telecameraAttiva){
		audio_play_sound(suonoCambioTelecamera, 1, false);
		global.telecameraAttiva = false;
		video_close();
		room_goto(rm_ufficio);
	}
	else{
		audio_play_sound(maschera_suono, 1, false);
		global.mascheraAttiva = false;
		with(obj_ufficio_controller){
			layer_maschera_active();
			aggiorna_layer_fw();
		}
	}
}

