//disabilita il loop attivato per il menu
video_enable_loop(false);
//seleziona video in base alla notte corrente
switch(global.notte){
	case 1:
		video = video_open("Notte01.mp4");
		break;
	case 2:
		video = video_open("Notte12.mp4");
		global.aggressivitaValZ = 18;
		global.aggressivitaUnknown = 18;
		global.velocitaScaricamento = 0.15;
		global.tempoMassimo = 104;
		global.potenziamento = 3;
		global.riduzioneTempoMassimo = 6.5;
		break;
	case 3:
		video = video_open("Notte23.mp4");
		global.aggressivitaValZ = 27;
		global.aggressivitaUnknown = 27;
		global.velocitaScaricamento = 0.2;
		global.tempoMassimo = 82;
		global.potenziamento = 2;
		global.riduzioneTempoMassimo = 5.5;
		break;
	case 4:
		video = video_open("Notte34.mp4");
		global.aggressivitaValZ = 33;
		global.aggressivitaUnknown = 33;
		global.velocitaScaricamento = 0.25;
		global.tempoMassimo = 63;
		global.potenziamento = 3.5
		global.riduzioneTempoMassimo = 7.5;
		break;
	case 5:
		video = video_open("Notte45.mp4");
		global.aggressivitaValZ = 44;
		global.aggressivitaUnknown = 44;
		global.velocitaScaricamento = 0.3;
		global.tempoMassimo = 37;
		global.potenziamento = 1.5;
		global.riduzioneTempoMassimo = 1.75;
		break;
}