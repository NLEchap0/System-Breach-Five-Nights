global.telecameraCorrente = 4;

if (!global.videoAperto) {
	video_close();
}

audio_play_sound(suonoCambioTelecamera, 1, false);

alarm[0]=2;