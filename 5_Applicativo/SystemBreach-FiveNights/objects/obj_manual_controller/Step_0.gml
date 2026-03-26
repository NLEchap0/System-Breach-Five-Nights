scroll_y += mouse_wheel_down() * scroll_speed;
scroll_y -= mouse_wheel_up() * scroll_speed;

scroll_y = clamp(scroll_y, 0, content_height - box_h);

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

box_x = 260;
box_y = 300;
box_w = 840;
box_h = 350;