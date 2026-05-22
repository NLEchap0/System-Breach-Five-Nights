if (global.inAttesaUfficio && room == rm_ufficio) {
    global.inAttesaUfficio = false;
    aggiorna_layer_fw();
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