/// @description Insert description here
// You can write your code in this editor
if(oGame.game_state != GAMESTATE.ENDING){
	if(alarm[1] <= 0){
		alarm[1] = 10;
	}
	set_all_text(c_black, fResetOptions, 0, 0);
	draw_text(55, 60, line_1_printed);
	set_all_text(oGame.rainbow_color, fResetOptions, 0, 0);
	draw_text(57, 62, line_1_printed);

	set_all_text(c_black, fResetOptions, 0, 0);
	draw_text(100, 110, line_2_printed);
	set_all_text(c_white, fResetOptions, 0, 0);
	draw_text(102, 112, line_2_printed);

	set_all_text(c_black, fRoomTitle, 0, 0);
	draw_text(80, 160, line_3_printed);
	set_all_text(c_red, fRoomTitle, 0, 0);
	draw_text(82, 162, line_3_printed);
}