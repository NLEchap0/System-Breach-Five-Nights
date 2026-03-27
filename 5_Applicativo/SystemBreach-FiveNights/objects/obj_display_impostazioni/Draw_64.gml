if (surface_exists(application_surface) && !shader_disabled)
{
    shader_set(shdr_brightness_contrast);
    shader_set_uniform_f(shader_get_uniform(shdr_brightness_contrast,"brightness"), global.brightness);
    shader_set_uniform_f(shader_get_uniform(shdr_brightness_contrast,"contrast"), global.contrast);
    shader_set_uniform_f(shader_get_uniform(shdr_brightness_contrast,"saturation"), global.saturation);
	draw_surface(application_surface,0,0);
    shader_reset();
}