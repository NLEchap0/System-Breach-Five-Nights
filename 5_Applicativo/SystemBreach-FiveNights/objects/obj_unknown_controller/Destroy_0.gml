if (variable_instance_exists(id, "controllo_attivazione")) {
    if (time_source_exists(controllo_attivazione)) {
        time_source_destroy(controllo_attivazione);
    }
}

if (variable_instance_exists(id, "controllo_barra")) {
    if (time_source_exists(controllo_barra)) {
        time_source_destroy(controllo_barra);
    }
}

if (variable_instance_exists(id, "controllo_movimento")) {
    if (time_source_exists(controllo_movimento)) {
        time_source_destroy(controllo_movimento);
    }
}

if (variable_instance_exists(id, "avvio_attacco")) {
    if (time_source_exists(avvio_attacco)) {
        time_source_destroy(avvio_attacco);
    }
}

if (variable_instance_exists(id, "verifica_attacco")) {
    if (time_source_exists(verifica_attacco)) {
        time_source_destroy(verifica_attacco);
    }
}

if (variable_instance_exists(id, "ripristinoUnknown")) {
    if (time_source_exists(ripristinoUnknown)) {
        time_source_destroy(ripristinoUnknown);
    }
}