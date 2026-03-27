if (instance_exists(obj_cam_statica)) {
    with (obj_cam_statica) {
        // Forza l'esecuzione del Draw Event (ev_draw, sub-evento 0)
        event_perform(ev_draw, 0); 
    }
}