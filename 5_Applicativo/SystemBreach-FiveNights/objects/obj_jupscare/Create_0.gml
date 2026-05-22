audio_stop_all();
isPaused = false;
nomeVideoAperto = "";

with (obj_ora) instance_destroy();
with (obj_Valz_controller) instance_destroy();
with (obj_singularity_controller) instance_destroy();
with(obj_unknown_controller) instance_destroy();
with (obj_Gestore_stanze) instance_destroy();

switch(global.ucciso){
	case 1:
		nomeVideoAperto = "jumpscare.mp4";
		video_open("jumpscare.mp4");
		video_enable_loop(false);
		break;
		
	case 2:
		nomeVideoAperto = "jumpscare-unknown.mp4";
		video_open("jumpscare-unknown.mp4");
		video_enable_loop(false);
		break;

}

riavvio = function(){
	video_resume();
}