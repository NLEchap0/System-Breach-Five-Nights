gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

box_x = gui_w * 0.18;
box_y = gui_h * 0.33;

box_w = gui_w * 0.70;
box_h = gui_h * 0.55;

draw_set_font(global.fnt_titolo);
altezza_titolo = string_height(anim_name[page]);

draw_set_font(global.fnt_sub_titolo);
altezza_sub_titolo = string_height("Comportamento");

draw_set_font(global.fnt_normale);
altezza_desc = string_height_ext(anim_desc[page], -1, box_w * 0.6);
altezza_comportamento = string_height_ext(anim_comportamento[page], -1, box_w * 0.6);
altezza_attacco = string_height_ext(anim_attacco[page], -1, box_w * 0.6);
altezza_difesa = string_height_ext(anim_difesa[page], -1, box_w * 0.6);

content_height = altezza_titolo + altezza_desc + (altezza_sub_titolo * 3) + altezza_comportamento + altezza_attacco;

scroll_y += mouse_wheel_down() * scroll_speed;
scroll_y -= mouse_wheel_up() * scroll_speed;

scroll_y = clamp(scroll_y, 0, content_height);

/*gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

box_x = gui_w * 0.13 //260;
box_y = gui_h * 0.33 //360;
box_w = gui_w * 0.66 //1280;
box_h = gui_h * 0.55 //600;

scroll_y += mouse_wheel_down() * scroll_speed;
scroll_y -= mouse_wheel_up() * scroll_speed;

scroll_y = clamp(scroll_y, 0, content_height - box_h);



