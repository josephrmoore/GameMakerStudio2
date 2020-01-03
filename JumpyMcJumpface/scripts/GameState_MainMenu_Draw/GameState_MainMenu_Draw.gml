var menu_items;
menu_items[0] = MAINMENUITEMS.START;

if(last_level_finished>0){
	menu_items[1] = MAINMENUITEMS.CONTINUE;
	if(finished_game){
		menu_items[2] = MAINMENUITEMS.LEVELSELECT;
	}
} else {
	if(finished_game){
		menu_items[1] = MAINMENUITEMS.LEVELSELECT;
	}
}


draw_set_color(c_white);
draw_set_font(f0);
draw_text(650, 150, "Jumpy");
draw_text(330, 300, "McJumpFace");

draw_set_font(f2);

if(menu_items[main_menu_pos] == MAINMENUITEMS.START){
	draw_set_color(c_yellow);
}
draw_text(840, 700, "START");
draw_set_color(c_white);


if(menu_items[main_menu_pos] == MAINMENUITEMS.CONTINUE){
	draw_set_color(c_yellow);
}
if(last_level_finished>0){
	draw_text(770, 750, "CONTINUE");
}
draw_set_color(c_white);

if(menu_items[main_menu_pos] == MAINMENUITEMS.LEVELSELECT){
	draw_set_color(c_yellow);
	draw_text(1450, 800, string(level_select_level));
}
if(finished_game){
	draw_text(680, 800, "LEVEL SELECT");
}

draw_set_color(c_white);