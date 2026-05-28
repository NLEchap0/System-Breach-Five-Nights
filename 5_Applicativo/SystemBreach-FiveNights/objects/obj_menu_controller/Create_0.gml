video = video_open("menuAnimato.mp4");
video_enable_loop(true);

if(!audio_is_playing(audioSfondoMenu)){
	audio_play_sound(audioSfondoMenu, 1, true);
}

   


