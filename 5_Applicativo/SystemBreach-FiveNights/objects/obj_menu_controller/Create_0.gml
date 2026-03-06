video = video_open("menuAnimato.mp4");
video_enable_loop(true);

if(!audio_is_playing(backgroundAudio)){
	audio_play_sound(backgroundAudio, 1, true);
}