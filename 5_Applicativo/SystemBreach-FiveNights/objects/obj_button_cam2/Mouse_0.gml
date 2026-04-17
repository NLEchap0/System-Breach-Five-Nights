global.currCam = 2;
with (obj_cam_cambio) {
    if (!video_aperto) {
		video_close();
        video_open("cambio.mp4");
        video_enable_loop(false);
        video_aperto = true;
    }
}
