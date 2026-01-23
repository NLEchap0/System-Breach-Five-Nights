var results = video_draw();
var status = results[0];

if (status == 0) {
    var surface = results[1];
	draw_surface_stretched(surface, 0, 0, room_width, room_height);
}