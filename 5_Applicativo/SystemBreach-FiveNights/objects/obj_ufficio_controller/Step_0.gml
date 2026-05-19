if (global.waiting_for_office && room == rm_ufficio) {
    global.waiting_for_office = false;
    aggiorna_layer_fw(); // riesegui quando torni
}
if (global.ucciso != 0){
	layer_set_visible("Assets_fw1Off", false);
	layer_set_visible("Assets_fw1On", false)
	layer_set_visible("Assets_fw2Off",false);
	layer_set_visible("Assets_fw2On", false);
	layer_set_visible("Assets_camOff", false);
	layer_set_visible("Assets_maschera", false)
	layer_set_visible("Assets_mascheraOn", false);
	video_close()
	alarm[0] = 1;
}