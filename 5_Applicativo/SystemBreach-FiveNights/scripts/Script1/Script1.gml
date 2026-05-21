function salvare_gioco_json_criptato(_data, _filename, _chiave_segreta) {
    // 1. Convertiamo la struct in testo JSON standard
    var _stringa_json = json_stringify(_data);
    
    // 2. Trasformiamo la stringa in Base64 (diventa una stringa illeggibile)
    var _stringa_base64 = base64_encode(_stringa_json);
    
    // 3. Prepariamo un buffer normale e ci scriviamo dentro il testo offuscato
    var _dimensione = string_byte_length(_stringa_base64) + 1;
    var _buffer = buffer_create(_dimensione, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _stringa_base64);
    
    // 4. Salviamo direttamente il file offuscato sul disco
    buffer_save(_buffer, _filename);
    buffer_delete(_buffer);
}

function aggiornamento_impostazioni(_filename, _chiave_segreta) {
    var data = {
        brightness : global.brightness,
        contrast   : global.contrast,
        saturation : global.saturation,
        volume     : global.volume,
        active     : global.active,
        notte      : global.night
    };
    
    // 1. Convertiamo in testo JSON
    var _stringa_json = json_stringify(data);
    
    // 2. Offuschiamo in Base64
    var _stringa_base64 = base64_encode(_stringa_json);
    
    // 3. Salviamo tramite buffer
    var _dimensione = string_byte_length(_stringa_base64) + 1;
    var _buffer = buffer_create(_dimensione, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _stringa_base64);
    
    buffer_save(_buffer, _filename);
    buffer_delete(_buffer);
}

function caricare_gioco_json_decriptato(_filename, _chiave_segreta) {
    if (!file_exists(_filename)) {
        return {};
    }
    
    // 1. Carichiamo il file dal disco nel buffer
    var _buffer = buffer_load(_filename);
    
    // 2. Leggiamo la stringa offuscata
    var _stringa_base64 = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);
    
    // 3. Convertiamo da Base64 a testo JSON normale leggibile da GameMaker
    var _stringa_json = base64_decode(_stringa_base64);
    
    // 4. Trasformiamo il testo JSON nella struct con le tue variabili globali
    var _data = json_parse(_stringa_json);
    
    return _data;
}