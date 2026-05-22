if (video_get_status() == video_status_closed){
	global.videoAperto = false;
	if (alarm[0] == -1) {
        alarm[0] = 5;
    }
}