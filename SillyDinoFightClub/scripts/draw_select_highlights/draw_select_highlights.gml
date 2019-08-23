var num = oGame.number_human_players;
// Do red highlight
var red_x = 90;
var red_y = 180;
switch(choose_screen_select_p1){
	case 0:
		red_x = 90;
		red_y = 180;
		break;
	case 1:
		red_x = 400;
		red_y = 180;
		break;
	case 2:
		red_x = 709;
		red_y = 180;
		break;
	case 3:
		red_x = 238;
		red_y = 478;
		break;
	case 4:
		red_x = 552;
		red_y = 478;
		break;
}	
draw_sprite(sSelectFighterRed, 0, red_x, red_y);
// Do blue highlight
if(num == 2){
	var blue_x = 709;
	var blue_y = 180;
	switch(choose_screen_select_p2){
		case 0:
			blue_x = 90;
			blue_y = 180;
			break;
		case 1:
			blue_x = 400;
			blue_y = 180;
			break;
		case 2:
			blue_x = 709;
			blue_y = 180;
			break;
		case 3:
			blue_x = 238;
			blue_y = 478;
			break;
		case 4:
			blue_x = 552;
			blue_y = 478;
			break;
	}	
	draw_sprite(sSelectFighterBlue, 0, blue_x, blue_y);
}