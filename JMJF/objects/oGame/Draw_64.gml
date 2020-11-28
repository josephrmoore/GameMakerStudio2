/// @description Insert description here
// You can write your code in this editor
var current_room = room_get_name(room);

if(debug_on){
	set_all_text(c_white, fDebug, 0, 0);
	if(instance_exists(oAvatar)){
		draw_text(8, 8, "grounded: ");
		draw_text(112, 8, oAvatar.grounded);
		draw_text(8, 24, "avatar_state: ");
		draw_text(112, 24, oAvatar.avatar_state);
		draw_text(8, 40, "avatar_jumps: ");
		draw_text(112, 40, oAvatar.jumps);
	}
}

if(oGame.game_state != GAMESTATE.ENDING){
switch(current_room){
	case "mainMenu":
		rainbow_text(5);
		set_all_text(c_black, fTitle, 0, 0);
		draw_text(13, 19, "Jumpy");
		draw_text(13, 67, "McJumpface");
		set_all_text(oGame.rainbow_color, fTitle, 0, 0);
		draw_text(16, 16, "Jumpy");
		draw_text(16, 64, "McJumpface");
		break;
	case "level1":
		// display on bottom of screen
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(128, 330, "Pie");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(16, 334, "LEVEL 1");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
	case "level2":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(235, 330, "Basic B");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "LEVEL 2");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
	case "level3":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(120, 330, "Watch Your Step");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(8, 334, "LEVEL 3");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
	case "level4":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(220, 330, "Boomers");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "LEVEL 4");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
	case "level5":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(120, 330, "Switcheroo");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(8, 334, "LEVEL 5");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
	case "level6":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(116, 330, "Carried Away");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(8, 334, "LEVEL 6");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
	case "level7":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(116, 330, "Slideways");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(8, 334, "LEVEL 7");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
	case "level8":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(210, 330, "All Hands");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(100, 334, "LEVEL 8");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
	case "level8B":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(110, 330, "All Hands");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(8, 334, "LEVEL 8");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
	case "level9":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(300, 330, "The End");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(195, 334, "LEVEL 9");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(565 + (i*20)), 330);
		}
		break;
}
}

//if(oGame.is_paused){
//	set_all_text(c_black, fPause, 0, 0);
//	draw_text(145, 150, "PAUSED");
//	set_all_text(c_white, fPause, 0, 0);
//	draw_text(149, 154, "PAUSED");
//}

//if(oGame.restart_screen){
//	set_all_text(c_white, fResetOptions, 0, 0);
//	draw_text(185, 150, "RESTART");
//	draw_text(185, 180, "QUIT");
//}