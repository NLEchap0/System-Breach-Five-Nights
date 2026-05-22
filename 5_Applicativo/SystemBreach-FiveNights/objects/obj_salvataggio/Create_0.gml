if (file_exists("save_data.dat")) {
    var _dati_caricati = caricare_gioco_json_base64();
    
    global.luminosita = _dati_caricati.brightness;
    global.contrasto   = _dati_caricati.contrast;
    global.saturazione = _dati_caricati.saturation;
    global.volume     = _dati_caricati.volume;
    global.attivo     = _dati_caricati.active;
    global.notte      = _dati_caricati.notte;
	
	audio_master_gain(global.volume);
    
    show_debug_message("Salvataggio criptato caricato con successo!");
} else {
    global.luminosita = -0.05;
    global.contrasto   = 1;
    global.saturazione = 1.1;
    global.volume     = 0.6;
    global.attivo     = 1;
    global.notte      = 1;
    
   
    
    salvare_gioco_json_base64();
    show_debug_message("Nessun salvataggio trovato. Creato nuovo file con valori di default!");
}