with(obj_impostazioni_controller)
{
    if(active == 1)
    {
        active = 0;
        window_set_fullscreen(false);
        
        // 1. Torniamo in finestra: rimettiamo la finestra alla dimensione base
        // (Sostituisci 1280x720 con la risoluzione nativa della tua finestra)
        var _base_w = 1280;
        var _base_h = 720;
        
        window_set_size(_base_w, _base_h);
        surface_resize(application_surface, _base_w, _base_h);
        
        aggiorna_checkbox();
    }
    else {
        active = 1;
        window_set_fullscreen(true);
        
        // 2. Prendiamo la risoluzione esatta del monitor dell'utente
        var _monitor_w = display_get_width();
        var _monitor_h = display_get_height();
        
        // 3. Adattiamo la superficie grafica al monitor
        surface_resize(application_surface, _monitor_w, _monitor_h);
        
        // 4. IL TRUCCO: Diciamo alla View Port della tua stanza di espandersi 
        // sul monitor, ma SENZA cambiare la dimensione della telecamera logica!
        // Assumiamo che tu stia usando la View [0] (quella standard)
        view_set_wport(0, _monitor_w);
        view_set_hport(0, _monitor_h);
        
        aggiorna_checkbox();
    }
    global.active = active;
    aggiornamento_impostazioni("save_data.dat", "NotteSegretaFNAF_2026!");
}
audio_play_sound(click, 1, false);