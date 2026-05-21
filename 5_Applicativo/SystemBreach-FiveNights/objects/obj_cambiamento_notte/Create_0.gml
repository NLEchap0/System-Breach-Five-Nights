//disabilita il loop attivato per il menu
video_enable_loop(false);
//seleziona video in base alla notte corrente
switch(global.night){
	case 1:
		video = video_open("Notte01.mp4");
		break;
	case 2:
		video = video_open("Notte12.mp4");
		global.aggressivitaValZ = 18;
		global.aggressivitaUnknown = 18;
		global.VelocitaScaricamento = 0.15;
		global.maxTime = 104;
		global.potenziamento = 3;
		global.riduzioneMaxTime = 6.5;
		break;
	case 3:
		video = video_open("Notte23.mp4");
		global.aggressivitaValZ = 27;
		global.aggressivitaUnknown = 27;
		global.VelocitaScaricamento = 0.2;
		global.maxTime = 82;
		global.potenziamento = 2;
		global.riduzioneMaxTime = 5.5;
		break;
	case 4:
		video = video_open("Notte34.mp4");
		global.aggressivitaValZ = 33;
		global.aggressivitaUnknown = 33;
		global.VelocitaScaricamento = 0.25;
		global.maxTime = 63;
		global.potenziamento = 3.5
		global.riduzioneMaxTime = 7.5;
		break;
	case 5:
		video = video_open("Notte45.mp4");
		global.aggressivitaValZ = 44;
		global.aggressivitaUnknown = 44;
		global.VelocitaScaricamento = 0.3;
		global.maxTime = 37;
		global.potenziamento = 1.5;
		global.riduzioneMaxTime = 1.75;
		break;
}