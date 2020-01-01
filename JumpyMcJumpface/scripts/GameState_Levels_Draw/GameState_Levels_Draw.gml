draw_set_color(c_white);
draw_set_font(fDebug);
draw_text(20, 50, string("Buttons needed: " + string(oGame.buttons_needed_this_level)));
draw_text(20, 80, string("Buttons pressed: " + string(oGame.buttons_pressed_this_level)));
draw_text(20, 100, string("player_state: " + string(oPlayer.player_state)));

if(game_paused){
	draw_set_color(c_white);
	draw_set_font(f1);
	draw_text(180, 355, "PAUSED");
}