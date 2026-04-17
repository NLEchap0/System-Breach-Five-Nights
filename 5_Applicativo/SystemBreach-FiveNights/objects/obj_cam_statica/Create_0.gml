video_x = x;
video_y = y;
video_aperto = false; // Variabile di controllo
	
if (video_get_status() == video_status_closed){
	video_close();
	alarm[0]=5;
}