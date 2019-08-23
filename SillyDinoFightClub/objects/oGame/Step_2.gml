/// @description Insert description here
// You can write your code in this editor
input();

switch(current_room){
	case "title":
		if(key_p1_up || key_p2_up){
			title_screen_select = 0;
		}
		if(key_p1_down || key_p2_down){
			title_screen_select = 1;
		}
		if(key_any){
			if(title_screen_select == 1){
				// start player 2 game
				number_human_players = 2;
			} else {
				// start player 1 game
				number_human_players = 1;
			}
			room_goto(chooseplayer);
			p1_fighter = FIGHTERS.TREX;
			p2_fighter = FIGHTERS.STEGASAURUS;
		}
		break;
	case "chooseplayer":
		if(key_p1_left_pressed){
			p1_fighter = clamp(p1_fighter-1, 0, 4);
		}
		if(key_p1_right_pressed){
			p1_fighter = clamp(p1_fighter+1, 0, 4);
		}
		if(key_p2_left_pressed){
			p2_fighter = clamp(p2_fighter-1, 0, 4);
		}
		if(key_p2_right_pressed){
			p2_fighter = clamp(p2_fighter+1, 0, 4);
		}
		if(key_any){
			room_goto(game);
		}
		break;
	case "game":
		break;
	case "result":
		break;
	case "trashtalk":
		break;
	case "endchoice":
		break;
}

var gp_num = gamepad_get_device_count();
gamepad_plugged_in = false;
for (var i = 0; i < gp_num; i++;){
	if (gamepad_is_connected(i)){
		gamepad_plugged_in = true;
	}
}