
if (!global.trigger && !global.lock || !global.trigger && global.mascheraActive)
{
	global.trigger = true;
	if(!global.mascheraActive && !global.camActive){
		global.camActive = true;
		audio_play_sound(cambio_cam, 1, false);
		switch(global.currCam){
			case 1:
				room_goto(rm_hacking_sinistra);
				break;
			case 2:
				room_goto(rm_hacking_destra);
				break;
			case 3:
				room_goto(rm_unknown);
				break;
			case 4:
				room_goto(rm_singularity);
				break;
			case 5:
				room_goto(rm_uffici);
				break;
			case 6:
				room_goto(rm_ufficio_ceo);
				break;
		}
	}
	
	else if (global.camActive){
		audio_play_sound(cambio_cam, 1, false);
		global.camActive = false;
		video_close();
		room_goto(rm_ufficio);
	}
	else{
		global.mascheraActive = false;
		
		with(obj_ufficio_controller){
			layer_maschera_active();
			aggiorna_layer_fw();
		}
	}
}

