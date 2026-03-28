with (obj_ora) {
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


video_enable_loop(false);
if(global.win){
	video_open("winEnding.mp4");
	global.night = global.night+1
	global.win = false
}else{
	
	video_open("lossEnding.mp4");
}
