gpu_set_scissor(box_x, box_y, box_w, box_h);

var base_y = box_y - scroll_y

for (var i = 0; i < array_length(anim_name); i++){
	var section_y = base_y + (i * block_height);
	
	draw_text(box_x, section_y, anim_name[i]);
	
	draw_text_ext(box_x, section_y + 40, anim_desc[i], -1, 500);
	
	draw_sprite(anim_sprite[i], 0, box_x + 1000, section_y + 40);
	
}

gpu_set_scissor(0, 0, display_get_width(), display_get_height());