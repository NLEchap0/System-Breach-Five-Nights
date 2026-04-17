
if (current_time - last_update >= 60000) {
    
    // Aggiorna il numero
    if (current_number == 12) {
        current_number = 1;
    }  else {
        video_close();
		alarm[0] = 1;
		global.win = true;
    }
    

    last_update = current_time;
}