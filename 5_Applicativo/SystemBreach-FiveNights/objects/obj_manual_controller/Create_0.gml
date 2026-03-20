gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

page = 0;

//aggiona il manuale impostando l'asset corretto a visibile
function aggiorna_pagina()
{
    layer_set_visible("Assets_backgroundMenuManualeInizio", page == 0);
	layer_set_visible("Assets_backgroundMenuManualeMezzo", page == 1);
	layer_set_visible("Assets_backgroundMenuManualeFine", page == 2);
}

aggiorna_pagina();

box_x = 260;
box_y = 300;
box_w = 840;
box_h = 350;

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