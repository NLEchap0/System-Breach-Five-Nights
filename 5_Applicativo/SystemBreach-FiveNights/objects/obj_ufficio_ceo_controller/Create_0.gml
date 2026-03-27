if (!instance_exists(obj_cam_statica)) {
        // Crea l'oggetto alle coordinate 0,0 (non importa dove, tanto lo disegni tu)
        // "Instances" è il nome del layer predefinito nella Room
        instance_create_layer(0, 0, "Instances", obj_cam_statica);
    }
if (instance_exists(obj_cam_statica)) {
    
    // Chiamiamo la funzione definita dentro obj_cam_statica
    // Usiamo il punto (.) per accedere alla variabile dell'altro oggetto
    obj_cam_statica.disegna_il_mio_video(x, y); 
}