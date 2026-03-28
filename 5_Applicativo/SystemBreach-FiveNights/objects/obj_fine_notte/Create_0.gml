video_enable_loop(false);
if(global.win = true){
	video_open("winEnding.mp4");
	global.night = global.night+1
}else{
	video_open("lossEnding.mp4");
}
