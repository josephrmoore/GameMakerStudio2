/// @description Insert description here
// You can write your code in this editor
var current_room = room_get_name(room);
switch(current_room){
	case "mainMenu":
		break;
	case "level1":
		// display on bottom of screen
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(245, 330, "Pie");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(16, 334, "Level 1");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(500 + (i*20)), 330);
		}
		break;
	case "level2":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(345, 330, "Basic B");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "Level 2");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(500 + (i*20)), 330);
		}
		break;
	case "level3":
		break;
	case "level4":
		break;
	case "level5":
		break;
	case "level6":
		break;
	case "level7":
		break;
	case "level8":
		break;
	case "level9":
		break;
}

if(oGame.is_paused){
	set_all_text(c_black, fPause, 0, 0);
	draw_text(145, 150, "PAUSED");
	set_all_text(c_white, fPause, 0, 0);
	draw_text(149, 154, "PAUSED");
}

if(oGame.restart_screen){
	set_all_text(c_white, fResetOptions, 0, 0);
	draw_text(185, 150, "RESTART");
	draw_text(185, 180, "QUIT");
}