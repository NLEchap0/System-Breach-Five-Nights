
if (current_time - last_update >= 60000) {
    
    // Aggiorna il numero
    if (current_number == 12) {
        current_number = 1;
    } else if (current_number < 5) {
        current_number += 1;
    } else {
        // victory
    }
    

    last_update = current_time;
}