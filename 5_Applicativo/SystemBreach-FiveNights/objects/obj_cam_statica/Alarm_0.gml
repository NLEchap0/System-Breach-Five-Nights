video_open("static.mp4"); // Il nome deve corrispondere al file negli Included Files
video_enable_loop(true);      // Opzionale: se vuoi che ricominci da capo
		
var _video_data = video_draw();
if (_video_data[0] == 0) {
	var _surf = _video_data[1];
	if (surface_exists(_surf)) {
		shader_set(shdr_green_screen);
		draw_surface(_surf, video_x, video_y);
		shader_reset();
	}
}