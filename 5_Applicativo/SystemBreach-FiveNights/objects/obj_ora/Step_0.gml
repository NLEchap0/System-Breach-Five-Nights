
if (current_time - last_update >= 10000) {
    
    // Aggiorna il numero
    if (current_number == 12) {
        current_number = 1;
    } else if (current_number <= 5) {
        current_number += 1;
    } else {
        video_close();
		alarm[0] = 1;
		
    }
    

    last_update = current_time;
}