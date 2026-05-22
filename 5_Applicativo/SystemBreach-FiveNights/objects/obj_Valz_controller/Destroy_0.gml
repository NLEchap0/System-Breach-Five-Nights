if (variable_instance_exists(id, "attacco_timer")) {
    if (time_source_exists(attacco_timer)) {
        time_source_destroy(attacco_timer);
    }
}

time_source_destroy(controllo_posizione);