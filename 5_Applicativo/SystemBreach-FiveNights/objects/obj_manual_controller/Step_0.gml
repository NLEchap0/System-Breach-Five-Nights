scroll_y += mouse_wheel_down() * scroll_speed;
scroll_y -= mouse_wheel_up() * scroll_speed;

scroll_y = clamp(scroll_y, 0, content_height - box_h);

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

box_x = gui_w * 0.08;
box_y = gui_h * 0.25;
box_w = gui_w * 1.21;
box_h = gui_h * 1.07;