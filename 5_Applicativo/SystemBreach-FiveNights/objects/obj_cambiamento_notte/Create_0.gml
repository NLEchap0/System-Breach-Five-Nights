room_goto(rm_ufficio);
//disabilita il loop attivato per il menu
video_enable_loop(false);
//seleziona video in base alla notte corrente
switch(global.night){
	case 1:
		video = video_open("Notte01.mp4");
		break;
	case 2:
		video = video_open("Notte12.mp4");
		break;
	case 3:
		video = video_open("Notte23.mp4");
		break;
	case 4:
		video = video_open("Notte34.mp4");
		break;
	case 5:
		video = video_open("Notte45.mp4");
		break;
}