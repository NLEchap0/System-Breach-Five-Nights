shader_set(sh_brightness_contrast);

var u_brightness = shader_get_uniform(sh_brightness_contrast, "brightness");
var u_contrast = shader_get_uniform(sh_brightness_contrast, "contrast");

shader_set_uniform_f(u_brightness, global.brightness);
shader_set_uniform_f(u_contrast, global.contrast);

draw_surface(application_surface,0,0);

shader_reset();