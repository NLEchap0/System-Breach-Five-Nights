gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

page = 0;

//aggiona il manuale impostando l'asset corretto a visibile
function aggiorna_pagina()
{
    layer_set_visible("Assets_backgroundMenuManualeInizio", page == 0);
	layer_set_visible("Assets_backgroundMenuManualeMezzo", page == 1);
	layer_set_visible("Assets_backgroundMenuManualeFine", page == 2);
}

aggiorna_pagina();

box_x = 260;
box_y = 300;
box_w = 840;
box_h = 350;

scroll_y = 0;
scroll_speed = 20;

anim_name =[ 
	"VAL-Z",
	"THE SINGULARITY",
	"THE UNKNOWN"
];
anim_desc = [
	"VAL-Z è un'unità umanoide creata come omaggio a un dipendente storico e leggendario dell'azienda di telecomunicazioni per cui lavori. Progettato originariamente per accogliere i visitatori con efficienza impeccabile, negli ultimi anni ha mostrato segnali di instabilità cognitiva e ribellione violenta. Per questo motivo, è stato sigillato permanentemente nell'ufficio del CEO, dove però ha imparato a manipolare i protocolli di rete.",
	"Nata in una stanza dimenticata dove sono stati ammassati computer e server obsoleti, questa entità è il risultato di un collegamento spontaneo tra dispositivi 'buttati via'. Ha acquisito una coscienza collettiva mossa dal rancore verso l'azienda che l'ha scartata. Poiché è impossibile spegnere fisicamente ogni singolo componente, l'azienda ha installato un generatore elettromagnetico per disturbare la loro comunicazione.",
];

anim_sprite = [
	ValZ_manuale,
	TheSingularity_manuale,
	TheUnknown_manuale
];

anim_comportamento = [
	"Si muove furtivamente lungo i corridoi puntando direttamente al tuo ufficio. Essendo un ex-membro del personale 'privilegiato', conosce perfettamente i sistemi di sicurezza ed ha alte doti di hacking.",
	"Non si muove, ma tenta di sincronizzare i suoi processori per lanciare un attacco totale al sistema dell'edificio. Dalle telecamere si può vedere lo stato di collegamento dei dispositivi.",
];

anim_attacco = [
	"Quando raggiunge una stanza di sicurezza, non cerca di abbattere la porta con la forza, ma ne esegue l'hacking. Se il progresso di hacking termina, la porta si aprirà per accoglierlo, portandoti al Game Over.",
	"Il campo elettromagnetico decade costantemente. Se la potenza scende allo 0%, la comunicazione tra i server si stabilizza e l'entità scatena un blackout critico, disattivando i tuoi sistemi di difesa per un tempo determinato.",
	"Tenta di hackerare la barriera energetica della sua cella tramite un terminale interno. Una volta libero, casualmente nel tempo, si potrà manifestare nel tuo ufficio segnalando la sua presenza tramite segnali audio."
];

anim_difesa = [
	"Monitora il corridoio del CEO. Se VAL-Z non è più lì, cercalo sulle telecamere vicino alle porte. Non appena vedi che sta tentando la manomissione, attiva il Firewall di zona per resettare il suo attacco e costringerlo a ricalcolare il percorso.",
	"Sintonizzati sulla telecamera della stanza dei server e ricarica il segnale elettromagnetico. Mantieni il disturbo attivo per impedire alla coscienza collettiva di coordinarsi. Il controllo costante dello stato di carica è consigliato.",
	"Dalla telecamera della cella, usa il tasto della Scossa per resettare i suoi progressi di hacking. Attenzione a non usarla se è già inattivo o provocherai il suo risveglio. Una volta libero se lo senti in ufficio, indossa immediatamente la Maschera per occultare la tua presenza."
];

block_height = 500;

content_height = array_length(anim_name) * block_height;


global.fnt_titolo = font_add("Arial", 32, true, false, 32, 128);
global.fnt_sub_titolo = font_add("Arial", 28, true, false, 32, 128);
global.fnt_normale = font_add("Arial", 16, false, false, 32, 128);