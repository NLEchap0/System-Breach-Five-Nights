
if (current_time - last_update >= 60000) {
    
    // Aggiorna il numero
    if (current_number == 12) {
        current_number = 1;
    } else if(current_number > 0 && current_number < 5) {
		current_number++;
	}else {
        video_close();
		if(instance_exists(obj_unknown_controller)){
		    with(obj_unknown_controller){ resetUnknown(); }
		}
		alarm[0] = 1;
		global.win = true;
    }
    

    last_update = current_time;
}