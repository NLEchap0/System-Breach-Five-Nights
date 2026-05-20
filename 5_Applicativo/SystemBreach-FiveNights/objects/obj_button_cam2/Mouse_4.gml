global.currCam = 2;

if (!global.video_aperto) {
	video_close();
}

audio_play_sound(cambio_cam, 1, false);

alarm[0]=2;