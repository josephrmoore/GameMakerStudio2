draw_set_color(c_white);
draw_set_font(fDebug);
draw_text(20, 50, string("grounded: " + string(oPlayer.grounded)));
draw_text(20, 80, string("Buttons pressed: " + string(buttons_pressed_this_level)));
draw_text(20, 100, string("player_state: " + string(oPlayer.player_state)));

if(game_paused){
	draw_set_color(c_white);
	draw_set_font(f1);
	draw_text(180, 355, "PAUSED");
}

draw_set_color(c_white);
draw_set_font(f3);
if(show_gui){
	if(buttons_needed_this_level==buttons_pressed_this_level){
		draw_text(1380, 1025, "EXIT ->");
	} else {
		draw_text(1000, 1025, "BUTTONS LEFT:");
		draw_text(1450, 1025, string(buttons_needed_this_level-buttons_pressed_this_level));
	}
}
if(level_title_showing){
	draw_text(50, 1025, level_name);
}

