/// @description Insert description here
// You can write your code in this editor

var current_room = room_get_name(room);

if(oGame.double_jump){
	if(instance_exists(oAvatar)){
		oAvatar.max_jumps = 2;
	}
}

switch(current_room){
	case "mainMenu":
		if(!audio_is_playing(aMainMenu)){
			audio_stop_all();
			audio_play_sound(aMainMenu, 100, true);
		}	
		break;
	case "level1":
		// rules for level
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shPie1, shPie2, shPie3, shPie4, shPie5);
		oGame.current_level = level1;
		oGame.next_level = level2;
		break;
	case "level2":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP11, shP12, shP13, shP14, shP15);
		oGame.current_level = level2;
		oGame.next_level = level3;
		break;
	case "level3":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP21, shP22, shP23, shP24, shP25);
		oGame.current_level = level3;
		oGame.next_level = level4;
		break;
	case "level4":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP31, shP32, shP33, shP34, shP35);
		oGame.current_level = level4;
		oGame.next_level = level5;
		break;
	case "level5":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = true;
		oGame.teleportation = false;
		set_palette(shP41, shP42, shP43, shP44, shP45);
		oGame.current_level = level5;
		oGame.next_level = level6;
		break;
	case "level6":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = true;
		oGame.current_level = level6;
		oGame.next_level = level7;
		break;
	case "level7":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = true;
		oGame.current_level = level7;
		break;
	case "level8":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		oGame.shaders_on = false;
		break;
	case "level9":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		oGame.shaders_on = false;
		break;
}