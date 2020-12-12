if(room_get_name(room) != "level9"){
	oGame.game_state = GAMESTATE.LEVEL;
	oGame.buttons_pressed_this_level = 0;
	gain_control();
	room_music();
}