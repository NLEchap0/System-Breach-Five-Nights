audio_stop_all();

with (obj_ora) instance_destroy();
with (obj_Valz_controller) instance_destroy();
with (obj_singularity_controller) instance_destroy();
with(obj_unknown_controller) instance_destroy();
with (obj_Gestore_stanze) instance_destroy();

global.posizioneValz = 6;
global.telecameraCorrente = 6;
global.mascheraAttiva = false;
global.firewall1 = false;
global.firewall2 = false;
global.ucciso = 0;
global.carica = 100;
global.caricamento = false;
global.blocco	= false;
global.barraUnknown = 100;
global.unknownAttivo = false;
global.unknownStordito = false;
global.unknownMovimento = false;

video_enable_loop(false);
if(global.vittoria){
	video_open("winEnding.mp4");
	if(global.notte < 5){
		global.notte += 1;
	}
	global.vittoria = false
	salvare_gioco_json_base64()
}else{
	
	video_open("lossEnding.mp4");
}
