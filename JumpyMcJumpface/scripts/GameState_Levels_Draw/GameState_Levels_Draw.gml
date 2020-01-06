draw_set_color(c_white);
draw_set_font(fDebug);
draw_text(20, 50, string("grounded: " + string(oPlayer.grounded)));
draw_text(20, 80, string("Buttons pressed: " + string(buttons_pressed_this_level)));
draw_text(20, 100, string("player_state: " + string(oPlayer.player_state)));
draw_text(20, 120, string("last_level_finished: " + string(oGame.last_level_finished)));
draw_text(20, 140, string("double_jump: " + string(oPlayer.has_double_jump)));
draw_text(20, 160, string("high_jump: " + string(oPlayer.has_high_jump)));
draw_text(20, 180, string("parachute: " + string(oPlayer.has_parachute)));
draw_text(20, 200, string("pole_climb: " + string(oPlayer.has_pole_climb)));

if(game_paused){
	draw_set_color(c_white);
	draw_set_font(f1);
	draw_text(180, 355, "PAUSED");
}

draw_set_color(c_white);
draw_set_font(f3);
if(show_gui){
	if(buttons_needed_this_level==buttons_pressed_this_level){
		draw_text(1380, 995, "EXIT ->");
	} else {
		draw_sprite(button,0,1380, 995);
		draw_text(1430, 995, string(string(buttons_pressed_this_level) + "/" + string(buttons_needed_this_level)));
	}
	draw_text(50, 965, string("Level " + string(level_number)));
	draw_text(50, 1000, level_name);
	if(oPlayer.has_parachute){
		draw_sprite(sUpgrade,0,50,1040);
	}
	if(oPlayer.has_high_jump){
		draw_sprite(sUpgrade,1,80,1040);
	}
	if(oPlayer.has_double_jump){
		draw_sprite(sUpgrade,2,110,1040);
	}
	if(oPlayer.has_pole_climb){
		draw_sprite(sUpgrade,3,140,1040);
	}
}
if(level_title_showing){
	draw_set_font(f2);
	draw_set_halign(fa_center);
	draw_text(900, 1000, level_name);
	draw_set_halign(fa_left);
}

