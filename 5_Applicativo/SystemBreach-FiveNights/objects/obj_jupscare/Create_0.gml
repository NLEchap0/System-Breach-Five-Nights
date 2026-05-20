audio_stop_all();
isPaused = false;
nomeVideoAperto = "";

with(obj_singularity_controller){
	time_source_destroy(controllo_posizione);
}
switch(global.ucciso){
	case 1:
		nomeVideoAperto = "jumpscare.mp4";
		video_open("jumpscare.mp4");
		video_enable_loop(false);
		break;
		
	case 2:
		nomeVideoAperto = "jumpscare-unknown.mp4";
		global.video_aperto = true;
		video_open("jumpscare-unknown.mp4");
		video_enable_loop(false);
		break;

}

riavvio = function(){
	video_resume();
}