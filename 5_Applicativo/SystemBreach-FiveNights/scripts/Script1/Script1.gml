function salvare_gioco_json_base64() {
    var _data = {
        brightness : global.luminosita,
        contrast   : global.contrasto,
        saturation : global.saturazione,
        volume     : global.volume,
        active     : global.attivo,
        notte      : global.notte
    };
	
    try {
        var _stringa_json = json_stringify(_data);
        var _stringa_base64 = base64_encode(_stringa_json);
        var _dimensione = string_byte_length(_stringa_base64) + 1;
        var _buffer = buffer_create(_dimensione, buffer_fixed, 1);
        buffer_write(_buffer, buffer_string, _stringa_base64);
        buffer_save(_buffer, "save_data.dat");
        buffer_delete(_buffer);
    } catch (_) {}
}



function caricare_gioco_json_base64() {

    if (!file_exists("save_data.dat")) {
        return {};
    }
    
    // 1. Carica buffer
    var _buffer = buffer_load("save_data.dat");
    
    // 2. Leggi Base64
    var _stringa_base64 = buffer_read(_buffer, buffer_string);
    
    buffer_delete(_buffer);
    
    // 3. Base64 -> JSON
    var _stringa_json = base64_decode(_stringa_base64);
    
    // 4. JSON -> Struct
    var _data = json_parse(_stringa_json);
    
    return _data;
}