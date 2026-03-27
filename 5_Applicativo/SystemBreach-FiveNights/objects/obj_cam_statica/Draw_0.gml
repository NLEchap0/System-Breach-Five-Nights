video_open("static.mp4"); // Il nome deve corrispondere al file negli Included Files
video_enable_loop(true);      // Opzionale: se vuoi che ricominci da capo
var _video_data = video_draw();
if (_video_data[0] == 0) {
    shader_set(shd_chromakey);
    draw_surface(_video_data[1], x, y);
    shader_reset();
}