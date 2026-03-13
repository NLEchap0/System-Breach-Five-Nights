//seleziona video in base alla notte corrente
switch(global.night){
	case 1:
		video = video_open("Notte01.mp4");
		video_enable_loop(true);
		break;
	case 2:
		video = video_open("Notte12.mp4");
		video_enable_loop(true);
		break;
	case 3:
		video = video_open("Notte23.mp4");
		video_enable_loop(true);
		break;
	case 4:
		video = video_open("Notte34.mp4");
		video_enable_loop(true);
		break;
	case 5:
		video = video_open("Notte45.mp4");
		video_enable_loop(true);
		break;
}