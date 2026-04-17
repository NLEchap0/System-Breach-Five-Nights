if (global.waiting_for_office && room == rm_ufficio) {
    global.waiting_for_office = false;
    aggiorna_layer_fw(); // riesegui quando torni
}