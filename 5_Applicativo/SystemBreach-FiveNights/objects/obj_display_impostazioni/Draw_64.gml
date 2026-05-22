try {
    if (surface_exists(application_surface) && !shader_disabled) {
        shader_set(shdr_luminosita_contrasto);
        shader_set_uniform_f(shader_get_uniform(shdr_luminosita_contrasto,"brightness"), global.luminosita);
        shader_set_uniform_f(shader_get_uniform(shdr_luminosita_contrasto,"contrast"), global.contrasto);
        shader_set_uniform_f(shader_get_uniform(shdr_luminosita_contrasto,"saturation"), global.saturazione);
        draw_surface(application_surface,0,0);
        shader_reset();
    }
} catch (_) {}