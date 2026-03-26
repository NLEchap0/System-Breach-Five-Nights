with(obj_uffico_controller){
	if(!global.mascheraActive){
		switch(global.currCam){
			case 6:
				room_goto(rm_ufficio_ceo);
			case 5:
				room_goto(rm_uffici);
			case 4:
				//room_goto(rm_ufficio_ceo);
			case 3:
				//room_goto(rm_ufficio_ceo);
			case 2:
				room_goto(rm_hacking_destra);
			case 1:
				room_goto(rm_hacking_sinistra);
		}
	}
}