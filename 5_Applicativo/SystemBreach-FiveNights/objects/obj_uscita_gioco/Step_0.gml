// Se premi ESC, gestisci l'apertura o la chiusura del popup
if (keyboard_check_pressed(vk_escape)) {
    show_popup = !show_popup;
    
    if (show_popup) {
        // 1. Disattiva TUTTE le istanze nella stanza...
        instance_deactivate_all(true);
        // 2. ...MA riattiva immediatamente te stesso, altrimenti congeli anche il popup!
        instance_activate_object(id);
    } else {
        // Se chiudi con ESC, riattiva tutto il gioco
        instance_activate_all();
    }
}