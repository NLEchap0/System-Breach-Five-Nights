audio_play_sound(maschera_suono, 1, false);

global.mascheraAttiva = true;

layer_set_visible("Assets_fw1Off", false);
layer_set_visible("Assets_fw1On", false)
layer_set_visible("Assets_fw2Off", false);
layer_set_visible("Assets_fw2On", false);
with(obj_ufficio_controller){
	layer_maschera_active();
}
