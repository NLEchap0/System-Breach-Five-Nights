audio_stop_all();

show_debug_message(instance_number(obj_ora));
with (obj_ora) {
	if (time_source_exists(controllo_ora)) {
        time_source_destroy(controllo_ora);
    }
	
    instance_destroy();
}

with(obj_singularity_controller){
	instance_destroy();
}

with (obj_Valz_controller) {
    if (variable_instance_exists(id, "attacco_timer")) {
        if (time_source_exists(attacco_timer)) {
            time_source_destroy(attacco_timer);
        }
    }

    if (time_source_exists(controllo_posizione)) {
        time_source_destroy(controllo_posizione);
    }

    instance_destroy();
}

with (obj_Gestore_stanze) {
    instance_destroy();
}

global.posizioneValz = 6;
global.currCam = 6;
global.ucciso = 0;
global.carica = 100;
global.lock	= false;
global.barraUnknown = 100;
global.unknownAttivo = false;
global.unknownStordito = false;
global.unknownMovimento = false;

video_enable_loop(false);
if(global.win){
	video_open("winEnding.mp4");
	if(global.night < 5){
		global.night += 1;
	}
	else{
		global.night = 1;
	}
	global.win = false
	aggiornamento_impostazioni("save_data.dat", "NotteSegretaFNAF_2026!");
}else{
	
	video_open("lossEnding.mp4");
}
