/// @description Insert description here
// You can write your code in this editor

var item_color = c_white;
var selected_color = c_yellow;
var menu_font = fResetOptions;

for(i=0; i<num_choices; i++){
	var this_color = item_color;
	if(i == selected_option){
		this_color = selected_color;
	}
	set_all_text(c_black,menu_font,0,0);
	draw_text(x-3, (y+(i*32))+3, all_menus[menu_id][i]);
	set_all_text(this_color,menu_font,0,0);
	draw_text(x, (y+(i*32)), all_menus[menu_id][i]);
}

switch (menu_id){
	case MENUS.PAUSE:
		set_all_text(c_black, fPause, 0, 0);
		draw_text(145, 150, "PAUSED");
		set_all_text(c_white, fPause, 0, 0);
		draw_text(149, 154, "PAUSED");
		break;
	case MENUS.RESTART:
		set_all_text(c_black, fPause, 0, 0);
		draw_text(145, 150, "YOU LOSE");
		set_all_text(c_white, fPause, 0, 0);
		draw_text(149, 154, "YOU LOSE");
		break;
}