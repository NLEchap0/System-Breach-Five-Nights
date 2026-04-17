
if (!global.trigger)
{
	global.trigger = true;
	if(!global.mascheraActive && !global.camActive){
		global.camActive = true;
		switch(global.currCam){
			case 1:
				room_goto(rm_hacking_sinistra);
				break;
			case 2:
				room_goto(rm_hacking_destra);
				break;
			case 3:
				//room_goto(rm_ufficio_ceo);
				break;
			case 4:
				//room_goto(rm_ufficio_ceo);
				break;
			case 5:
				room_goto(rm_uffici);
				break;
			case 6:
				room_goto(rm_ufficio_ceo);
				break;
		}
	}
	
	else{
		global.camActive = false;
		video_close();
		room_goto(rm_ufficio);
	}
}

