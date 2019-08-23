/// @description Insert description here
// You can write your code in this editor
switch(current_room){
	case "title":
		if(title_screen_select == 0){
			draw_sprite(sTitle_p1, 0, 0, 0);
		} else {
			draw_sprite(sTitle_p2, 0, 0, 0);
		}
		break;
	case "chooseplayer":
		draw_sprite(sChoose_bk, 0, 0, 0);
		draw_select_highlights();
		break;
	case "game":
		break;
	case "result":
		if(match_winner == 0){
			if(oGame.gamepad_plugged_in){
				draw_sprite(sWin_button, 0, 0, 0);
			} else {
				draw_sprite(sWin_key, 0, 0, 0);
			}
		} else if (match_winner == 1) {
			if(oGame.gamepad_plugged_in){
				draw_sprite(sLose_button, 0, 0, 0);
			} else {
				draw_sprite(sLose_key, 0, 0, 0);
			}
		}
		break;
	case "trashtalk":
		draw_sprite(sTrash, 0, 0, 0);
		break;
	case "endchoice":
		draw_sprite(sContinue, 0, 0, 0);
		if(oGame.gamepad_plugged_in){
			draw_sprite(sContinue_button, 0, 0, 0);
		} else {
			draw_sprite(sContinue_key, 0, 0, 0);
		}
		break;
}