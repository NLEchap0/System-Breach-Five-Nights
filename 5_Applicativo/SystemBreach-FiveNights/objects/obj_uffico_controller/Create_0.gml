mascheraActive = false;
fw1Active = false;
fw2Active = false;

//cambio degli assets attivi in base allo stato della maschera
function layer_maschera_active()
{
    layer_set_visible("Assets_camOff", mascheraActive == false);
	layer_set_visible("Assets_maschera", mascheraActive == false)
	layer_set_visible("Assets_mascheraOn", mascheraActive == true);
}

//cambio dello stato dei firewall
function aggiorna_layer_fw()
{
	layer_set_visible("Assets_fw1Off", fw1Active == false);
	layer_set_visible("Assets_fw1On", fw1Active == true)
	layer_set_visible("Assets_fw2Off", fw2Active == false);
	layer_set_visible("Assets_fw2On", fw2Active == true);
}

layer_maschera_active();
aggiorna_layer_fw();