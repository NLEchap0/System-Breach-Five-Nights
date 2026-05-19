randomize();
global.camActive = false;
global.mascheraActive = false;
global.currCam = 6;
global.posizioneValz = 6;
global.firewall1 = false;
global.firewall2 = false;
global.night = 1;
global.trigger= false
global.win = false;
global.waiting_for_office = false;
global.ucciso = 0; //1 valZ 2 e 3 altrri animatronici 
global.video_aperto = false;
//singularity
global.carica = 100;
global.caricamento=false
global.VelocitaScaricamento = 0.1; //per notte 1
global.lock = false;
global.timelock= 10

//the unknown
global.posizioneUnknown = 0;
global.barraUnknown = 100;
global.unknownAttivo = false;
global.unknownMovimento = false;
global.VelocitaScendereBarra = 0.3;
if(instance_exists(obj_unknown_controller)){
    with(obj_unknown_controller){
        resetUnknown();
    }
}