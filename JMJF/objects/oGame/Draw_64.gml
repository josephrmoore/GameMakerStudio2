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
		if(instance_exists(oSlider) && oSlider.dir != 1){
			rainbow_text(5);
			set_all_text(c_black, fTitle, 0, 0);
			draw_text(13, 19, "Jumpy");
			draw_text(13, 67, "McJumpface");
			set_all_text(oGame.rainbow_color, fTitle, 0, 0);
			draw_text(16, 16, "Jumpy");
			draw_text(16, 64, "McJumpface");
		}
		break;
	case "level1":
		var offset_x = 0;
		set_all_text(c_black, fPS24, 0, 0);
		draw_text(113+offset_x, 329, "Pie");
		set_all_text(c_white, fPS24, 0, 0);
		draw_text(116+offset_x, 326, "Pie");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 1");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 1");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
		}
		break;
	case "level2":
		var offset_x = 90;
		set_all_text(c_black, fPS24, 0, 0);
		draw_text(113+offset_x, 329, "Basic B");
		set_all_text(c_white, fPS24, 0, 0);
		draw_text(116+offset_x, 326, "Basic B");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 2");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 2");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
		}
		break;
	case "level3":
		var offset_x = 0;
		set_all_text(c_black, fPS20, 0, 0);
		draw_text(123+offset_x, 329, "Watch Your Step");
		set_all_text(c_white, fPS20, 0, 0);
		draw_text(126+offset_x, 326, "Watch Your Step");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 3");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 3");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
		}
		break;
	case "level4":
		var offset_x = 0;
		set_all_text(c_black, fPS18, 0, 0);
		draw_text(113+offset_x, 329, "Carried Away");
		set_all_text(c_white, fPS18, 0, 0);
		draw_text(116+offset_x, 326, "Carried Away");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 4");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 4");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
		}
		break;
	case "level5":
		var offset_x = 0;
		set_all_text(c_black, fPS22, 0, 0);
		draw_text(113+offset_x, 329, "Slideways");
		set_all_text(c_white, fPS22, 0, 0);
		draw_text(116+offset_x, 326, "Slideways");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 5");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 5");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
		}
		break;
	case "level6":
		var offset_x = 0;
		set_all_text(c_black, fPS22, 0, 0);
		draw_text(113+offset_x, 329, "Switcheroo");
		set_all_text(c_white, fPS22, 0, 0);
		draw_text(116+offset_x, 326, "Switcheroo");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 6");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 6");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
		}
		break;
	case "level7":
		var offset_x = 90;
		set_all_text(c_black, fPS24, 0, 0);
		draw_text(113+offset_x, 329, "Boomers");
		set_all_text(c_white, fPS24, 0, 0);
		draw_text(116+offset_x, 326, "Boomers");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 7");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 7");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
		}
		break;
	case "level8":
		var offset_x = 90;
		set_all_text(c_black, fPS24, 0, 0);
		draw_text(113+offset_x, 329, "Final Exam");
		set_all_text(c_white, fPS24, 0, 0);
		draw_text(116+offset_x, 326, "Final Exam");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 8");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 8");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
		}
		break;
	case "level8B":
		var offset_x = 0;
		set_all_text(c_black, fPS24, 0, 0);
		draw_text(113+offset_x, 329, "Final Exam");
		set_all_text(c_white, fPS24, 0, 0);
		draw_text(116+offset_x, 326, "Final Exam");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 8");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 8");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
		}
		break;
	case "level9":
		var offset_x = 90;
		set_all_text(c_black, fPS24, 0, 0);
		draw_text(113+offset_x, 329, "The End");
		set_all_text(c_white, fPS24, 0, 0);
		draw_text(116+offset_x, 326, "The End");
		set_all_text(c_black, fLevelNumber, 0, 0);
		draw_text(18+offset_x, 323, "LEVEL 9");
		set_all_text(c_white, fLevelNumber, 0, 0);
		draw_text(20+offset_x, 322, "LEVEL 9");
		for(var i=0; i<oAvatar.lives_left; i++){
			draw_sprite(sLifeIcon,0,(offset_x+20 + (i*20)), 340);
		}
		if(oGame.double_jump){
			draw_sprite_ext(sDoubleJump,0,offset_x+8,328,0.5,0.5,0,c_white,1);
		}
		if(oGame.high_jump){
			draw_sprite_ext(sHighJump,0,offset_x+8,340,0.5,0.5,0,c_white,1);
		}
		if(oGame.armor_jump){
			draw_sprite_ext(sArmorJump,0,offset_x+8,352,0.5,0.5,0,c_white,1);
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