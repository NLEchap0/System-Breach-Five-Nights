gpu_set_scissor(box_x, box_y, box_w, box_h);

var base_y = box_y - scroll_y;
var section_y = base_y;

switch(page){
	case 0:
		var scala_x = (box_w * 0.2)/1000; 
		var scala_y = (box_h * 0.5)/1000;
		draw_sprite_ext(anim_sprite[page], 0, box_w * 0.8, section_y, scala_x, scala_y, 0, c_white, 1);
		break;
		
	case 1:
		var scala_x = (box_w * 0.15)/1000; 
		var scala_y = (box_h * 0.3)/1000;
		draw_sprite_ext(anim_sprite[page], 0, box_w * 0.9, section_y, scala_x, scala_y, 0, c_white, 1);
		break;
		
	case 2:
		var scala_x = (box_w * 0.2)/1000; 
		var scala_y = (box_h * 0.45)/1000;
		draw_sprite_ext(anim_sprite[page], 0,box_w * 0.95, section_y, scala_x, scala_y, 0, c_white, 1);
		break;
}

draw_set_font(global.fnt_titolo);
draw_text(box_x, section_y, anim_name[page]);

if(page != 2){
	testoGrande = "";
	
	draw_set_font(global.fnt_normale);
	draw_text_ext(
		box_x,
		section_y + altezza_titolo + box_h * 0.02,
		anim_desc[page],
		-1,
		box_w * 0.6
	);
	
	draw_set_font(global.fnt_sub_titolo);
	draw_text(
		box_x,
		section_y + altezza_titolo + altezza_desc + box_h * 0.04,
		"Comportamento"
	);

	draw_set_font(global.fnt_normale);
	draw_text_ext(
		box_x,
		section_y + altezza_titolo + altezza_desc + altezza_sub_titolo + box_h * 0.04,
		anim_comportamento[page],
		-1,
		box_w * 0.6
	);

	draw_set_font(global.fnt_sub_titolo);
	draw_text(
		box_x,
		section_y + altezza_titolo + altezza_desc + altezza_sub_titolo + altezza_comportamento + box_h * 0.06,
		"Attacco"
	);

	draw_set_font(global.fnt_normale);
	draw_text_ext(
		box_x,
		section_y + altezza_titolo + altezza_desc + (altezza_sub_titolo * 2) + altezza_comportamento + box_h * 0.06,
		anim_attacco[page],
		-1,
		box_w * 0.6
	);

	draw_set_font(global.fnt_sub_titolo);
	draw_text(
		box_x,
		section_y + altezza_titolo + altezza_desc + (altezza_sub_titolo * 2) + altezza_comportamento + altezza_attacco + box_h * 0.08,
		"Difesa"
	);

	draw_set_font(global.fnt_normale);
	draw_text_ext(
		box_x,
		section_y + altezza_titolo + altezza_desc + (altezza_sub_titolo * 3) + altezza_comportamento + altezza_attacco + box_h * 0.08,
		anim_difesa[page],
		-1,
		box_w * 0.6
	);

}else{

	draw_set_font(global.fnt_sub_titolo);
	draw_text(
		box_x,
		section_y + altezza_titolo + 20,
		"Attacco"
	);

	draw_set_font(global.fnt_normale);
	draw_text_ext(
		box_x,
		section_y + 120,
		anim_attacco[page],
		-1,
		box_w * 0.6
	);

	draw_set_font(global.fnt_sub_titolo);
	draw_text(
		box_x,
		section_y + 230,
		"Difesa"
	);

	draw_set_font(global.fnt_normale);
	draw_text_ext(
		box_x,
		section_y + 290,
		anim_difesa[page],
		-1,
		box_w * 0.6
	);

	draw_set_font(global.fnt_sub_titolo);
	draw_text(
		box_x,
		section_y + 440,
		"Diario"
	);
}

gpu_set_scissor(0, 0, display_get_gui_width(), display_get_gui_height());