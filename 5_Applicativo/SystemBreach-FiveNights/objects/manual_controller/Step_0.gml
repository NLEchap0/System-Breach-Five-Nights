scroll_y += mouse_wheel_down() * scroll_speed;
scroll_y -= mouse_wheel_up() * scroll_speed;
scroll_y = clamp(scroll_y, 0, content_height - display_get_height());