var result = video_draw()
var status = result[0] // stato del video 

if (status == 0)
{
	var surf = result[1]; // frame del video
    draw_surface_stretched(surf, 0, 0, room_width, room_height);
}

else if (status == 1){
	video_close();
	room_goto(rm_ufficio);
}