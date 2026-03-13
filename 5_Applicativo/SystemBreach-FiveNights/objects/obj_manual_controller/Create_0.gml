gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

layer_id = layer_get_id("Assets_1");

bg_inizio = layer_get_element_at_depth(layer_id, 0);
bg_mezzo  = layer_get_element_at_depth(layer_id, 1);
bg_fine   = layer_get_element_at_depth(layer_id, 2);

page = 0;

function aggiorna_pagina()
{
    layer_sprite_set_visible(bg_inizio, page == 0);
    layer_sprite_set_visible(bg_mezzo,  page == 1);
    layer_sprite_set_visible(bg_fine,   page == 2);
}

aggiorna_pagina();

box_x = gui_w * 0.08;
box_y = gui_h * 0.25;
box_w = gui_w * 1.21;
box_h = gui_h * 1.07;

scroll_y = 0;
scroll_speed = 20;

anim_name =[ 
	"VAL-Z",
	"THE SINGULARITY",
	"THE UNKNOWN"
];
anim_desc = [
	"uno bello",
	"uno strano",
	"uno brutto"
];

anim_sprite = [
	Sprite1,
	Sprite3,
	Sprite4
];

block_height = 500;

content_height = array_length(anim_name) * block_height;