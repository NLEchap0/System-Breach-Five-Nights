audio_stop_all();

with (obj_ora) instance_destroy();
with (obj_Valz_controller) instance_destroy();
with (obj_singularity_controller) instance_destroy();
with(obj_unknown_controller) instance_destroy();
with (obj_Gestore_stanze) instance_destroy();

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
