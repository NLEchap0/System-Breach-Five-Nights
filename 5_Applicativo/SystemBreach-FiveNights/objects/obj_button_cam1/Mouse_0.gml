global.currCam = 1;

with (obj_cam_cambio) {
    if (!video_aperto) {
		video_close();
        video_open("cambio.mp4");
        video_enable_loop(true);
        video_aperto = true;
    }
}
alarm[0]=2;