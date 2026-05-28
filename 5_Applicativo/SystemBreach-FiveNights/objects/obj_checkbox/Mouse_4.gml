with(obj_impostazioni_controller)
{
    if(global.attivo == 1)
    {
		
        global.attivo = 0;
		ridimensiona();
        
        with(obj_impostazioni_controller){
			aggiorna_checkbox();
		}
    }
    else {
        global.attivo = 1;
        window_set_fullscreen(true);
        
        ridimensiona();
        
		with(obj_impostazioni_controller){
			aggiorna_checkbox();
		}
    }
    salvare_gioco_json_base64()
}
audio_play_sound(suonoClick, 1, false);