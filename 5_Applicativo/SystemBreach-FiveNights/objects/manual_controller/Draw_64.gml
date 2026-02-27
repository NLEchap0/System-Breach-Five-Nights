var base_y = -scroll_y

for (var i = 0; i < array_length(anim_name); i++){
	var section_y = base_y + (i * block_height);
	
	draw_text(100, section_y, anim_name[i]);
	
	draw_text_ext(100, section_y + 40, anim_desc[i], -1, 500);
	
	draw_sprite(anim_sprite[i], 0, 600, section_y + 40);
}