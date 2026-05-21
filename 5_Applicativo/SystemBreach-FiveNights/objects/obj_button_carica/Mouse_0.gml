if(global.carica <100){
	global.caricamento=true
	global.carica += 0.15;
	with(obj_stanza_singularity_controller){
		color = make_colour_rgb(30, 200, 150);
	}
}