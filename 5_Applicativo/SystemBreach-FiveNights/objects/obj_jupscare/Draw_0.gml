var result = video_draw()
var status = result[0] // stato del video 

if(nomeVideoAperto == "jumpscare.mp4"){
	if (status == 0)
	{
		var surf = result[1]; // frame del video
	    draw_surface_stretched(surf, 0, 0, room_width, room_height);
	}

	if(video_get_position() >= 6030 && video_get_position() <= 6040 && !isPaused  && global.ucciso == 1){
		video_pause();
		isPaused = true;
		ranTime = irandom_range(3, 5);
		riavvioTimer = time_source_create(time_source_game, ranTime , time_source_units_seconds, riavvio, [], 1);
		time_source_start(riavvioTimer);
	}

	if (video_get_status() == video_status_closed){
		video_close();
		isPaused = false;
		room_goto(rm_end);
	}
}else{
	if (status == 0)
	{
		var surf = result[1]; // frame del video
	    draw_surface_stretched(surf, 0, 0, room_width, room_height);
	}
	
	if (video_get_status() == video_status_closed){
		video_close();
		room_goto(rm_end);
	}
}