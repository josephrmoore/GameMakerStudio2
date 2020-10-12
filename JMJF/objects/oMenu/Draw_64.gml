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
	set_all_text(this_color,menu_font,0,0);
	draw_text(x, (y+(i*32)), all_menus[menu_id][i]);
}