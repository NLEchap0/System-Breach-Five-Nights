switch(global.ucciso){
	case 1:
		video_open("jumpscare.mp4");
		video_enable_loop(false);
	break;

}

isPaused = false;

riavvio = function(){
	show_debug_message("ciao");
	video_resume();
}