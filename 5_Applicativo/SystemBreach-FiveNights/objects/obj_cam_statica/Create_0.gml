video_x = 0;
video_y = 0;

disegna_il_mio_video = function(_x, _y) {
	video_x = _x;
	video_y = _y;
	
	video_close();
	alarm[0]=5;
}