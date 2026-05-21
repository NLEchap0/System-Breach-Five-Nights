// 1. Definiamo il nome del file e la chiave segreta per la crittografia
#macro CHIAVE_SEGRETISSIMA "NotteSegretaFNAF_2026!"
#macro FILE_IMPOSTAZIONI "save_data.dat"

// 2. CONTROLLO DEL FILE: Il file esiste già sul computer del giocatore?
if (file_exists(FILE_IMPOSTAZIONI)) {
    
    // Il file esiste! Lo leggiamo e lo decriptiamo inserendolo in una struct temporanea
    var _dati_caricati = caricare_gioco_json_decriptato(FILE_IMPOSTAZIONI, CHIAVE_SEGRETISSIMA);
    
    // Assegniamo i valori salvati alle tue variabili globali
    global.brightness = _dati_caricati.brightness;
    global.contrast   = _dati_caricati.contrast;
    global.saturation = _dati_caricati.saturation;
    global.volume     = _dati_caricati.volume;
    global.active     = _dati_caricati.active;
    global.notte      = _dati_caricati.notte;
	
	audio_master_gain(global.volume);
    
    show_debug_message("Salvataggio criptato caricato con successo!");

} else {
    
    // Il file NON esiste (Primo avvio del gioco). Impostiamo i tuoi valori di default:
    global.brightness = -0.05;
    global.contrast   = 1;
    global.saturation = 1.1;
    global.volume     = 0.6;
    global.active     = 1;
    global.notte      = 1;
    
    // Creiamo la struct con questi valori di default per salvarli subito
    var _impostazioni_iniziali = {
        brightness : global.brightness,
        contrast   : global.contrast,
        saturation : global.saturation,
        volume     : global.volume,
        active     : global.active,
        notte      : global.notte
    };
    
    // Salviamo il file criptato per la prima volta, così è pronto per il futuro
    salvare_gioco_json_criptato(_impostazioni_iniziali, FILE_IMPOSTAZIONI, CHIAVE_SEGRETISSIMA);
    
    show_debug_message("Nessun salvataggio trovato. Creato nuovo file con valori di default!");
}