fw1Active = false;
fw2Active = false;

//cambio degli assets attivi in base allo stato della maschera
function layer_maschera_active()
{
    layer_set_visible("Assets_camOff", global.mascheraActive == false);
	layer_set_visible("Assets_maschera", global.mascheraActive == false)
	layer_set_visible("Assets_mascheraOn", global.mascheraActive == true);
}

//cambio dello stato dei firewall
function aggiorna_layer_fw()
{
	layer_set_visible("Assets_fw1Off", global.firewall1 == false);
	layer_set_visible("Assets_fw1On", global.firewall1 == true)
	layer_set_visible("Assets_fw2Off", global.firewall2 == false);
	layer_set_visible("Assets_fw2On", global.firewall2 == true);
}

layer_maschera_active();
aggiorna_layer_fw();