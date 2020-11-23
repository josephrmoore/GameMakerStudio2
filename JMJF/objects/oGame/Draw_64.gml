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

switch(current_room){
	case "mainMenu":
		set_all_text(c_white, fTitle, 0, 0);
		draw_text(16, 16, "Jumpy");
		draw_text(16, 64, "McJumpface");
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
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(345, 330, "Watch Your Step!");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "Level 3");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(500 + (i*20)), 330);
		}
		break;
	case "level4":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(345, 330, "Boomers");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "Level 4");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(500 + (i*20)), 330);
		}
		break;
	case "level5":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(345, 330, "Switcheroo");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "Level 5");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(500 + (i*20)), 330);
		}
		break;
	case "level6":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(345, 330, "Carried Away");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "Level 6");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(500 + (i*20)), 330);
		}
		break;
	case "level7":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(345, 330, "Slideways");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "Level 7");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(500 + (i*20)), 330);
		}
		break;
	case "level8":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(345, 330, "All Hands");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "Level 8");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(500 + (i*20)), 330);
		}
		break;
	case "level9":
		set_all_text(c_white, fRoomTitle, 0, 0);
		draw_text(345, 330, "The End");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(116, 334, "Level 9");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(500 + (i*20)), 330);
		}
		break;
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