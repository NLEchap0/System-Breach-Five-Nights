function aggiornamentoPosizione(){
	show_debug_message("stanza");
	switch (room) {
	    case rm_ufficio_ceo:
	        // Caso 1
			
	        layer_set_visible("Assets_valz_pos6", false);
	    break;
    
    
	    case rm_hacking_destra:
	        // Caso 2
	        layer_set_visible("LayerMaschera", false);
	    break;
    
    
	    case rm_hacking_sinistra:
	        // Caso 3
	        layer_set_visible("LayerMaschera", false);
	    break;
    
    
	    case rm_uffici:
	        // Caso 4
	        layer_set_visible("LayerMaschera", true);
	    break;
    
	    case rm_a:
	        // Caso 5
	        layer_set_visible("LayerMaschera", false);
	    break;
    
    
	    case rm_b:
	        // Caso 6
	        layer_set_visible("LayerMaschera", true);
	    break;
    
	}
}