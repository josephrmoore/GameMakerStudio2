/// @description Insert description here
// You can write your code in this editor
if(oGame.game_state != GAMESTATE.ENDING){
	if(alarm[1] <= 0){
		alarm[1] = 10;
	}
	set_all_text(c_black, fResetOptions, 0, 0);
	draw_text(80, 60, line_1_printed);
	set_all_text(oGame.rainbow_color, fResetOptions, 0, 0);
	draw_text(82, 62, line_1_printed);

	set_all_text(c_black, fResetOptions, 0, 0);
	draw_text(150, 110, line_2_printed);
	set_all_text(c_white, fResetOptions, 0, 0);
	draw_text(152, 112, line_2_printed);

	set_all_text(c_black, fRoomTitle, 0, 0);
	draw_text(130, 160, line_3_printed);
	set_all_text(c_red, fRoomTitle, 0, 0);
	draw_text(132, 162, line_3_printed);
}